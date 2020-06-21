// histo for compare diff dependence of number of threads

#include <iostream>
#include <fstream>
#include <cmath>

// #define USE_VC

const int NCores = 16;  // max number of threads set to run

void make_timehisto_SSE()
{
  TH1F *hrAll[2];
    
  hrAll[0] = new TH1F("simd","simd",NCores+1,-0.5,NCores+0.5);  // all 1 .. end
  hrAll[1] = new TH1F("scalar","scalar",NCores+1,-0.5,NCores+0.5);  // all 1 .. end


  ifstream iff("make_singleVc_host.dat");
  int iVec = 1;
  float prepTime,trCpuTime,trRealTime,allCpuTime,allRealTime;

  string tmpStr;
  
  iff >> tmpStr;
  iff >> tmpStr >>tmpStr >>tmpStr >> tmpStr >>tmpStr>>tmpStr>>tmpStr>>tmpStr;
  iff >> prepTime >> trCpuTime >> trRealTime >> allCpuTime >> allRealTime;
  float TrPerus = 1./trRealTime;
//      std::cout << iThread << "  " << TrPerus << " " << i <<std::endl;
  hrAll[1]->SetBinContent(iVec+1,1./trRealTime);
  hrAll[1]->SetBinError(iVec+1,0.00001);  iff >> tmpStr;
  
  for (int i=0; (i < NCores) && (!iff.eof()); i++){
    iff >> iVec;
    iff >> tmpStr >>tmpStr >>tmpStr >> tmpStr >>tmpStr>>tmpStr>>tmpStr>>tmpStr;
    iff >> prepTime >> trCpuTime >> trRealTime >> allCpuTime >> allRealTime;

    float TrPerus = 1./trRealTime;
//      std::cout << iVec << "  " << TrPerus << " " << i <<std::endl;
    hrAll[0]->SetBinContent(iVec+1,1./trRealTime);
    hrAll[0]->SetBinError(iVec+1,0.00001);
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

  for (int i = 0; i < 2; i++){
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
      case 0: hr->SetMarkerColor(TColor::GetColorDark(2)); break;
      case 1: hr->SetMarkerColor(TColor::GetColorDark(4)); break;
      case 2: hr->SetMarkerColor(TColor::GetColorDark(3)); break;
      case 3: hr->SetMarkerColor(TColor::GetColorDark(6)); break;
      default: hr->SetMarkerColor(TColor::GetColorDark(2+2-i));
    }

//    hr->SetMarkerStyle(22); // unic
//    hr->SetMarkerColor(TColor::GetColorDark(2+2));

    hr->GetYaxis()->SetTitleFont(22);
    hr->GetXaxis()->SetTitleFont(22);
    hr->GetYaxis()->SetLabelFont(22);
    hr->GetXaxis()->SetLabelFont(22);
    hr->GetXaxis()->SetTitle("Vector size");
    hr->GetYaxis()->SetTitle("Tracks/#mus");
    hr->GetYaxis()->SetRangeUser(0, 1.1*hrAll[0]->GetMaximum()); // tr/us
    hr->GetXaxis()->SetRangeUser(0.5, iVec+0.5); // tr/us

    if (i) hr->Draw("same"); else hr->Draw();

    if(i==0)
      leg1->AddEntry( hrAll[i],"SSE" );
    if(i==1)
      leg1->AddEntry( hrAll[i],"float" );
  }

  leg1->Draw();

// TFile file(outputFile,"RECREATE");
// c1->Write();
  TString FileNameSave="Scalability_SSE.pdf";
  c1->SaveAs(FileNameSave.Data());
}
