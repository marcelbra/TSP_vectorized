#ifndef ELASTICNETWORK_H
#define ELASTICNETWORK_H

#include <iostream>
#include "vectors/P4_F32vec4.h"
using namespace std;



class ElasticNetwork {
    public:
        ElasticNetwork(float alpha, float beta, float factor, float K , float* cityX, float* cityY, int numOfCities);
        ~ElasticNetwork();

        void evolution();
        
        float* get_cityX();
        float* get_cityY();
        float* get_pointsX();
        float* get_pointsY();
        float get_max_dist_city_point();
        float* get_roundtrip();

    private:
        int numOfCities;
        int numOfPoints;
        float factor;
        float alpha, beta;
        float K;
        int K_update;
        float radius;
        float num_point_factor;
        int num_points;
        float* cityX;
        float* cityY;
        float* pointsX;
        float* pointsY;
        void construct_net();
        float get_max_dist_cities_point();
        fvec calc_denom(fvec pointsX, fvec pointsY, fvec citiesX, fvec citiesY, fvec T);
};
float euclidian_dist(float x1, float y1, float x2, float y2);
void normalize(float* vec, int length);


#endif // ELASTICNETWORK_H
