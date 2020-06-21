// histo for compare diff dependence of number of threads

#include <iostream>
#include <fstream>
#include <cmath>

// #define USE_VC

const int NCores = 512;  // max number of threads set to run
// const char* inputFile = "make_tbbtime.dat";
// const char* outputFile = "make_tbbtime.root";
const int nFiles = 3;
TString inputFile[nFiles];
TString outputFile;
TString FileNameTemplate = "make_omptime_";
TString Arch[5] = {"host","mic0","mic1","host+MIC0+MIC1","host+MIC0+MIC1"};

void FileNamesInit(){
  for (int i = 0; i < nFiles; i++){
    inputFile[i] = FileNameTemplate + Arch[i];
    inputFile[i] += ".dat";
  }
  outputFile = FileNameTemplate + "_";
  outputFile += nFiles;
  outputFile += "histo.root";
}

void plotCombinedScalability()
{
  TH1F *hrAll[nFiles+2];
  FileNamesInit();

  for ( int iFile = 0; iFile < nFiles; iFile++){

    hrAll[iFile] = new TH1F(Arch[iFile].Data(),Arch[iFile].Data(),NCores+1,-0.5,NCores+0.5);  // all 1 .. end

    cout << " Read data from file " << inputFile[iFile] << endl;
    ifstream iff(inputFile[iFile]);
    int iThread;
    float prepTime,trCpuTime,trRealTime,allCpuTime,allRealTime;

    TH1F *hr = hrAll[iFile];

    for (int i=0; (i < NCores) && (!iff.eof()); i++){
      string tmpStr;
      iff >> iThread;
      iff >> tmpStr >>tmpStr >>tmpStr >> tmpStr >>tmpStr>>tmpStr>>tmpStr>>tmpStr;
      iff >> prepTime >> trCpuTime >> trRealTime >> allCpuTime >> allRealTime;

      float TrPerus = 1./trRealTime;
//      std::cout << iThread << "  " << TrPerus << " " << i <<std::endl;
      hr->SetBinContent(iThread+1,1./trRealTime);
      hr->SetBinError(iThread+1,0.00001);
    }
  } // iFile

  hrAll[3] = new TH1F(Arch[3].Data(),Arch[3].Data(),NCores+1,-0.5,NCores+0.5);  // all 1 .. end
  for(int iBin=1; iBin<=NCores+1; ++iBin)
  {
    if((hrAll[0]->GetBinContent(iBin) > 0.) || (hrAll[1]->GetBinContent(iBin)) || (hrAll[2]->GetBinContent(iBin)))
    {
      hrAll[3]->SetBinContent(iBin,hrAll[0]->GetBinContent(iBin)+hrAll[1]->GetBinContent(iBin)+hrAll[2]->GetBinContent(iBin));
      hrAll[3]->SetBinError(iBin,0.00001);
    }
  }

  gStyle->SetCanvasColor(10);
  gStyle->SetFrameFillColor(10);
  gStyle->SetTitleColor(0);
  gStyle->SetHistFillColor(0);
  gStyle->SetOptStat(00000000);
  gStyle->SetPadGridX(1);
  gStyle->SetPadGridY(1);
  gStyle->SetOptTitle(0);
  gStyle->SetTextFont(22);

  TCanvas *c1 = new TCanvas("OMP", "OMP", 700, 700);
  TLegend *leg1 = new TLegend(0.2-0.03,.62+0.05,0.55-0.03,.75+0.05);
  leg1->SetFillColor(0);
  leg1->SetLineWidth(0);
  leg1->SetBorderSize(0);
  leg1->SetTextFont(22);
//   leg1->SetTextSize(4);

  Double_t maxY = 0;
  for (int i = 0; i < nFiles+1; i++){
    TH1F *hr = hrAll[i];
    
    if( hr->GetMaximum() > maxY )
      maxY = hr->GetMaximum();
  }
   
  for (int i = 0; i < nFiles+1; i++){
    TH1F *hr = hrAll[i];
    
    hr->SetLineColor(0);
    hr->SetLineWidth(0);
//     hr->SetMarkerStyle(22);
//     hr->SetMarkerSize(1.5 +.5*i);
    switch(i){
      case 0: hr->SetMarkerStyle(21); break;
      case 1: hr->SetMarkerStyle(23); break;
      case 2: hr->SetMarkerStyle(22); break;
      case 3: hr->SetMarkerStyle(33); break;
      default:   hr->SetMarkerStyle(20);
    }
    hr->SetMarkerSize(1.0);
    switch(i){
      case 0: hr->SetMarkerColor(TColor::GetColorDark(6)); break;
      case 1: hr->SetMarkerColor(TColor::GetColorDark(4)); break;
      case 2: hr->SetMarkerColor(TColor::GetColorDark(3)); break;
      case 3: hr->SetMarkerColor(TColor::GetColorDark(2)); break;
      default: hr->SetMarkerColor(TColor::GetColorDark(2+2-i));
    }

//    hr->SetMarkerStyle(22); // unic
//    hr->SetMarkerColor(TColor::GetColorDark(2+2));

    hr->GetYaxis()->SetTitleFont(22);
    hr->GetXaxis()->SetTitleFont(22);
    hr->GetYaxis()->SetLabelFont(22);
    hr->GetXaxis()->SetLabelFont(22);
    hr->GetXaxis()->SetTitle("Number of Logical Cores");
    hr->GetYaxis()->SetTitle("Tracks/#mus");
    hr->GetYaxis()->SetRangeUser(0, 1.1*maxY ); // tr/us

    if (i) hr->Draw("same"); else hr->Draw();

    leg1->AddEntry( hrAll[i],Arch[i].Data() );
   }

   leg1->Draw();

// TFile file(outputFile,"RECREATE");
// c1->Write();
  TString FileNameSave;
  FileNameSave = "ScalabilityHostMic0Mic1.pdf";
  c1->SaveAs(FileNameSave.Data());
}
