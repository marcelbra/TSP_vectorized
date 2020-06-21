// histo for compare diff dependence of number of threads

#include <iostream>
#include <fstream>
#include <cmath>

// #define USE_VC

const int NCores = 8;  // max number of threads set to run
// const char* inputFile = "make_tbbtime.dat";
// const char* outputFile = "make_tbbtime.root";
TString inputFile;
TString FileNameTemplate = "make_omptime_";
TString Arch = "mic1";

void FileNamesInit(){
  inputFile = FileNameTemplate + Arch;
  inputFile += "_local.dat";
}

void plotMic1Scalability()
{
  TH1F *hrAll;
  FileNamesInit();


    hrAll = new TH1F(Arch.Data(),Arch.Data(),NCores+1,-0.5,NCores+0.5);  // all 1 .. end

    cout << " Read data from file " << inputFile << endl;
    ifstream iff(inputFile);
    int iThread;
    float prepTime,trCpuTime,trRealTime,allCpuTime,allRealTime;

    TH1F *hr = hrAll;

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
  {
    TH1F *hr = hrAll;
    
    if( hr->GetMaximum() > maxY )
      maxY = hr->GetMaximum();
  }

  int i = 0;   
  {
    TH1F *hr = hrAll;
    
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
      case 0: hr->SetMarkerColor(TColor::GetColorDark(kRed)); break;
      case 1: hr->SetMarkerColor(TColor::GetColorDark(4)); break;
      case 2: hr->SetMarkerColor(TColor::GetColorDark(3)); break;
      case 3: hr->SetMarkerColor(TColor::GetColorDark(2)); break;
      default: hr->SetMarkerColor(TColor::GetColorDark(2+2-i));
    }

    hr->GetYaxis()->SetTitleFont(22);
    hr->GetXaxis()->SetTitleFont(22);
    hr->GetYaxis()->SetLabelFont(22);
    hr->GetXaxis()->SetLabelFont(22);
    hr->GetXaxis()->SetTitle("Number of Logical Cores");
    hr->GetYaxis()->SetTitle("Tracks/#mus");
    hr->GetYaxis()->SetRangeUser(0, 1.1*maxY ); // tr/us

    if (i) hr->Draw("same"); else hr->Draw();

    leg1->AddEntry( hrAll,Arch.Data() );
   }

   leg1->Draw();

// TFile file(outputFile,"RECREATE");
// c1->Write();
  TString FileNameSave;
  FileNameSave = "ScalabilityMic1.pdf";
  c1->SaveAs(FileNameSave.Data());
}
