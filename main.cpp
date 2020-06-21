// #include "mainwindow.h"
#include "elasticnetwork.h"
// #include <QApplication>
#include <iostream>
#include <fstream>
#include <string>
#include "TStopwatch.h"

// Command to run:
// g++ elasticnetwork.cpp main.cpp -O3 -fno-tree-vectorize -g -msse; ./a.out

int main(int argc, char *argv[])
{
    // QApplication a(argc, argv);
    //MainWindow w;
    //w.show();


    string filename = "/Users/marcelbraasch/Documents/Developer/TSP_vectorized/test1.txt";

    // get number of lines from test file
    int number_of_lines = 0;
    float factor = 2.5;
    string line;
    ifstream myfile(filename);

    while (getline(myfile, line)) {
        ++number_of_lines;
    }
    

    std::cout << "Number of cities in file: " << number_of_lines << endl;

    // initialize vectors from file
    float cityX[number_of_lines];
    float cityY[number_of_lines];

    ifstream infile(filename);
    int i;
    float x_coord, y_coord;
    while (infile >> i >> x_coord >> y_coord)
    {
        cityX[i-1] = x_coord;
        cityY[i-1] = y_coord;
    }
    
    // initialize net and run
    ElasticNetwork en = ElasticNetwork(1.0, 1.0, 0.1, factor, cityX, cityY, number_of_lines);
    TStopwatch timer;

    

    en.evolution();

    timer.Stop();
    cout << "Total time: " << timer.RealTime() << endl;

    // check results
//    for (int i = 0; i < number_of_lines; ++i) {
//        cout << "city at " << en.get_cityX()[i] << "," << en.get_cityY()[i] << endl;
//    }

//    for (int j = 0; j < (int)(number_of_lines * 2.5); ++j) {
//        cout << "point at " << en.get_pointsX()[j] << "," << en.get_pointsY()[j] << endl;
//    }

    float* roundtrip = en.get_roundtrip();
    int last_visited = 0;
    for (int j = 0; j < (int)(number_of_lines * factor); ++j) {
        if (roundtrip[j] != last_visited) {
            cout << "roundtrip visits " << roundtrip[j] << endl;
            last_visited = roundtrip[j];
        }

    }
    delete[] roundtrip;


    //std::cout << "hello world." << std::endl;
    // return a.exec();
}
