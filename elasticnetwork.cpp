#include "elasticnetwork.h"
#include "math.h"
#include "vectors/P4_F32vec4.h"
#include <cstdlib>

// Test

ElasticNetwork::ElasticNetwork(float alpha, float beta, float K, float* cityX, float* cityY, int numOfCities){
    this->alpha = alpha;
    this->beta = beta;
    this->K = K;
    this->numOfCities = numOfCities;


    K_update=25;
    radius=0.1;
    num_point_factor=2.5;

    this->num_points = (int)(num_point_factor * numOfCities);

    this->cityX = cityX;
    this->cityY = cityY;

    this->construct_net();

}

ElasticNetwork::~ElasticNetwork(){

    delete [] pointsX;
    delete [] pointsY;
}

fvec ElasticNetwork::calc_denom(fvec pointsX, fvec pointsY, fvec citiesX, fvec citiesY, fvec T) {
    return exp(-1
               * (citiesX - pointsX) * (citiesX - pointsX) + (citiesX - pointsX) * (citiesX - pointsX)
               * (1/T));
}


void ElasticNetwork::evolution(){
    
    // init variables
    int evolution_round = 0;
    float T = 2 * (K*K);
    float v_ia[numOfCities][num_points];
    float delta_y_a_X[num_points];
    float delta_y_a_Y[num_points];
    float numerator, denominator;

    // copy cities from unaligned to aligned array
    float cityXAligned[numOfCities] __attribute__((aligned(16)));
    float cityYAligned[numOfCities] __attribute__((aligned(16)));
    for (int i = 0; i < numOfCities; i++) {
        cityXAligned[i] = cityX[i];
        cityYAligned[i] = cityY[i];
    }
    
    // copy points from unaligned to aligned array
    float pointXAligned[num_points] __attribute__((aligned(16)));
    float pointYAligned[num_points] __attribute__((aligned(16)));
    for (int i = 0; i < num_points; i++) {
        pointXAligned[i] = pointsX[i];
        pointYAligned[i] = pointsY[i];
    }
    


    while ((evolution_round < 10000) && (get_max_dist_cities_point() > 0.009)) {
        if (evolution_round % 1000 == 0) cout << "evolution_round: " << evolution_round << ", max dist: " << get_max_dist_cities_point() << endl;


        evolution_round += 1;
        if (evolution_round % K_update == 0) {
            K = max(0.01, 0.99*K);
            T = 2 * (K*K);
        }

        // Fill t array
        float tArrayAligned[num_points] __attribute__((aligned(16)));;
        fill_n(tArrayAligned, num_points, T);
        
        // calculate v_ia for every city i:
        for (int i = 0; i < numOfCities; ++i) {
            denominator = 0.0;
            for (int l = 0; l < 100; l++) {
                for(int j=0; j<num_points; j+=fvecLen) {
                    fvec& pointsXVec = reinterpret_cast<fvec&>(pointXAligned[j]);
                    fvec& pointsYVec = reinterpret_cast<fvec&>(pointYAligned[j]);
                    fvec& citiesXVec = reinterpret_cast<fvec&>(cityXAligned[i]);
                    fvec& citiesYVec = reinterpret_cast<fvec&>(cityYAligned[i]);
                    fvec& tVec = reinterpret_cast<fvec&>(tArrayAligned[i]);
                    fvec& denomSummandsVec = reinterpret_cast<fvec&>(tArrayAligned[i]); // dummy
                    denomSummandsVec = calc_denom(pointsXVec, pointsYVec, citiesXVec, citiesYVec, tVec);
                    for (int k = 0; k<fvecLen; k++) {
                        denominator += denomSummandsVec[k];
                    }
                }
            }


            // for every point a:
            for (int a = 0; a < num_points; ++a) {
                // numerator can be calculated immediately:
                numerator = exp(-1 * pow(euclidian_dist(cityX[i], cityY[i], pointsX[a], pointsY[a]),2) * (1/T));
                // denominator has to be calculated over all points b:
                v_ia[i][a] = numerator / (denominator + 0.000001);
            }
        }

        // calculate shifts ("Δy_a")
        for (int a = 0; a < num_points; ++a) {
            float summed_impacts_x = 0;
            float summed_impacts_y = 0;

            for (int i = 0; i < numOfCities; ++i) {
                summed_impacts_x = summed_impacts_x + v_ia[i][a] * (cityX[i] - pointsX[a]);
                summed_impacts_y = summed_impacts_y + v_ia[i][a] * (cityY[i] - pointsY[a]);
            }
            if ((a>0) && (a < (num_points)-1)) {
                summed_impacts_x = alpha * summed_impacts_x + beta * K * (pointsX[a-1] + pointsX[a+1] - 2 * pointsX[a]);
                summed_impacts_y = alpha * summed_impacts_y + beta * K * (pointsY[a-1] + pointsY[a+1] - 2 * pointsY[a]);
            }
            if (a==0) {
                summed_impacts_x = alpha * summed_impacts_x + beta * K * (pointsX[num_points - 1] + pointsX[a+1] - 2 * pointsX[a]);
                summed_impacts_y = alpha * summed_impacts_y + beta * K * (pointsY[num_points - 1] + pointsY[a+1] - 2 * pointsY[a]);
            }
            if (a == (num_points)-1) {
                summed_impacts_x = alpha * summed_impacts_x + beta * K * (pointsX[a-1] + pointsX[0] - 2 * pointsX[a]);
                summed_impacts_y = alpha * summed_impacts_y + beta * K * (pointsY[a-1] + pointsY[0] - 2 * pointsY[a]);
            }

            delta_y_a_X[a] = summed_impacts_x;
            delta_y_a_Y[a] = summed_impacts_y;

        }

        // add shifts to current coordinates
        for (int a = 0; a < num_points; ++a) {
            pointsX[a] = pointsX[a] + delta_y_a_X[a];
            pointsY[a] = pointsY[a] + delta_y_a_Y[a];
        }

    }


}

void ElasticNetwork::construct_net(){
    pointsX = new float[num_points];
    pointsY = new float[num_points];

    float step = (2 * M_PI) / (num_points);

    pointsX[0] = 0;
    pointsY[0] = radius;

    for(int i = 1; i < num_points; i++){
        pointsX[i] = -radius * sin(i*step);
        pointsY[i] = radius * cos(i*step);
        // cout << "X " << pointsX[i] << " Y " << pointsY[i] << endl;
    }

    normalize(cityX, numOfCities);
    normalize(cityY, numOfCities);
    normalize(pointsX, num_points);
    normalize(pointsY, num_points);

}

float* ElasticNetwork::get_cityX(){
    return cityX;
}

float* ElasticNetwork::get_cityY(){
    return cityY;
}

float* ElasticNetwork::get_pointsX(){
    return pointsX;
}

float* ElasticNetwork::get_pointsY(){
    return pointsY;
}

void normalize(float* vec, int length){
    float max = vec[0];
    float min = vec[0];
    for(int i = 0; i < length; i++){
        if(vec[i] < min) min = vec[i];
        if(vec[i] > max) max = vec[i];
    }
    for(int i = 0; i < length; i++){
        vec[i] = (vec[i] - min)/(max - min);
    }
}

float euclidian_dist(float x1, float y1, float x2, float y2) {
    return sqrt(pow((x2 - x1),2) + pow((y2 - y1),2));
}


float ElasticNetwork::get_max_dist_cities_point() {
    // get max{min dist of city to point for every city} (i.e. the max of the min distances city to points)
    float max_dist_cities_point = 0.0;
    float min_dist_city_point;
    float dist_city_point;

    // for every city:
    for (int i = 0; i < numOfCities; ++i) {
        min_dist_city_point = 2.0;
        // for every point: check dist point to city; if it's the smallest yet -> update min_dist_city_point

        for (int j = 0; j < num_points; ++j) {
            dist_city_point = euclidian_dist(cityX[i], cityY[i], pointsX[j], pointsY[j]);
            if (dist_city_point < min_dist_city_point) {
                min_dist_city_point = dist_city_point;
            }
        }
        // if this city's min dist to a point is bigger than the other cities' dist -> update
        max_dist_cities_point = min_dist_city_point > max_dist_cities_point ? min_dist_city_point : max_dist_cities_point;
    }
    return max_dist_cities_point;
}


float* ElasticNetwork::get_roundtrip() {
    // get the calculated roundtrip
    float* roundtrip = new float[num_points];
    int closest_city_index;
    float min_dist_to_city;

    // for each point: go through cities and find the closest one -> get its index
    for (int a = 0; a < num_points; ++a) {
        min_dist_to_city = 2.0;
        for (int i = 0; i < numOfCities; ++i) {
            if (euclidian_dist(cityX[i], cityY[i], pointsX[a], pointsY[a]) < min_dist_to_city) {
                min_dist_to_city = euclidian_dist(cityX[i], cityY[i], pointsX[a], pointsY[a]);
                closest_city_index = i;
            } else {
                closest_city_index = 0;
            }
            roundtrip[a] = closest_city_index + 1; // in Testfällen fangen Städte mit 1 an
        }
    }
    return roundtrip;

}






