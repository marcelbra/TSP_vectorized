// histo for compare diff dependence of number of threads

#include <iostream>
#include <fstream>
#include <cmath>

const int maxNAll = 200;  // max number of threads set to run
const int maxNstat = 200;  // max number of repeats
int Nstat; // number of repeats
// const char* inputFile = "make_opencltime.dat";
// const char* outputFile = "make_opencltime.root";
const int nFiles = 1;
TString inputFile[nFiles];
TString outputFile;
// TString outputFile[nFiles];
TString FileNameTemplate = "make_opencl_GPU_time";
    
void FileNamesInit(){
  for (int i = 0; i < nFiles; i++){
    inputFile[i] = FileNameTemplate;// + "_v";
//    inputFile[i] += i;
    inputFile[i] += ".dat";
//     outputFile[i] = FileNameTemplate + "_v";
//     outputFile[i] += i;
//     outputFile[i] += ".dat";
  }
  outputFile = FileNameTemplate + "_";
  outputFile += nFiles;
  outputFile += "histo.root";
}

struct HistoData
{
  HistoData():bin(0),time(0) {};

  int bin;
  float time;
};

void make_timehisto_stat_complex_opencl_GPU()
{
  TH1F *hrAll[nFiles];
  FileNamesInit();
  for ( int iFile = 0; iFile < nFiles; iFile++){
    // read data
    cout << " Read data from file " << inputFile[iFile] << endl;
    ifstream iff(inputFile[iFile]);
    int NPoints=0, NMax=0; // number of threads sets to run
    iff >> NPoints >> NMax;
    cout << "Begin read " << NPoints << " threads sets data. With statistic: " << NMax << endl;
    float nTread,prepTime,trCpuTime,trRealTime,allCpuTime,allRealTime;
    TString sTemp,sTemp2;

    HistoData* histoData = new HistoData[NPoints];

    for (int k = 0; k < 3; k++){
      iff >> sTemp;
std::cout << sTemp << " " ;
    }
std::cout << std::endl;

    for(int iP=0; iP<NPoints; iP++)
    {
      iff >> nTread;
      for (int k = 0; k < 9; k++){
        iff >> sTemp;
std::cout << sTemp << " " ;
      }
std::cout << std::endl;
      float floatTmp;
      histoData[iP].bin = nTread;
      iff >> prepTime >> floatTmp >> histoData[iP].time >> allCpuTime >> allRealTime;
      histoData[iP].time = 1./histoData[iP].time;
      cout << nTread << " " << ":"<< floatTmp << " " << histoData[iP].time << endl;
    }
  // 	trRealTime = 1/timeData[0].realTime.mean; // norm on 1-thread
  
//     hrAll[iFile] = new TH1F("Real Time","Real Time",Nall+1,-0.5,Nall+0.5);  // all 1 .. end
    hrAll[iFile] = new TH1F("Real Time","Real Time",NMax+1,-0.5,NMax+0.5);  // only 2,4,6, .. end
    TH1F *hr = hrAll[iFile];
    hr->SetBinContent(1,0);
// //   for (int i=0; i<Nall; i++){  // all 1 .. end
//     hr->SetBinContent(i/2+2,timeData[i].realTime.mean);
//     hr->SetBinError(i/2+2, timeData[i].realTime.error);
//   }
    for (int i=0; i<NPoints; i++){
      hr->SetBinContent(histoData[i].bin+1,histoData[i].time);
      hr->SetBinError(histoData[i].bin+1, 0.000001);
    }

//     TH1F *hc = new TH1F("CPU Time","CPU Time",Nall+1,-0.5,Nall+0.5);
//     hc->SetBinContent(1,0);
//     for (int i=0; i<Nall; i++){
//       hc->SetBinContent(i+2,timeData[i].cpuTime.mean/trCpuTime);
//       hc->SetBinError(i+2, timeData[i].cpuTime.error/trCpuTime);
//     }
//     hc->GetXaxis()->SetTitle("Number of threads");
//     hc->GetYaxis()->SetTitle("Cpu time / Single cpu time ");
//     hc->SetMarkerColor(2);
//     hc->SetLineColor(2);
//     hc->SetLineWidth(2);
    
  //   hc->GetYaxis()->SetTitle("track / us");
  
    gStyle->SetCanvasColor(10);
    gStyle->SetFrameFillColor(10);
    gStyle->SetTitleColor(0);
    gStyle->SetHistFillColor(0);
    gStyle->SetOptStat(00000000);
    gStyle->SetPadGridX(1);
    gStyle->SetPadGridY(1);
    gStyle->SetOptTitle(0);
    gStyle->SetTextFont(22);
    
  } // iFile

  TCanvas *c1 = new TCanvas("ITBB", "ITBB", 700, 700);
  TLegend *leg1 = new TLegend(0.2-0.03,.62+0.05,0.55-0.03,.75+0.05);
  leg1->SetFillColor(0);
  leg1->SetLineWidth(0);
  leg1->SetBorderSize(0);
  leg1->SetTextFont(22);
//   leg1->SetTextSize(4);

  for (int i = 0; i < nFiles; i++){
    TH1F *hr = hrAll[i];
    
    hr->SetLineColor(0);
    hr->SetLineWidth(0);
//     hr->SetMarkerStyle(22);
//     hr->SetMarkerSize(1.5 +.5*i);
    switch(i){
      case 0: hr->SetMarkerStyle(21); break;
      case 1: hr->SetMarkerStyle(23); break;
      case 2: hr->SetMarkerStyle(22); break;
      default:   hr->SetMarkerStyle(20);
    }
    hr->SetMarkerSize(1.8);
    hr->SetMarkerColor(TColor::GetColorDark(2+i));

    hr->GetYaxis()->SetTitleFont(22);
    hr->GetXaxis()->SetTitleFont(22);
    hr->GetYaxis()->SetLabelFont(22);
    hr->GetXaxis()->SetLabelFont(22);
    hr->GetXaxis()->SetTitle("Local Item Size");
    hr->GetYaxis()->SetTitle(Form("Tracks/#mus"));
//    hr->GetYaxis()->SetRangeUser(0,200); // tr/us
    
    if (i) hr->Draw("same"); else hr->Draw();

    leg1->AddEntry( hrAll[nFiles-1-i],Form("10^{%i} tracks/thread",nFiles-1-i+1) );
   }

//   leg1->Draw();

   c1->SaveAs("Scalability.pdf");
   c1->SaveAs("Scalability.png");
// TFile file(outputFile,"RECREATE");
// c1->Write();

}
