//Example for fitting signal/background. 
// This example can be executed with:
// root -l FittingDemoSimple_0.C
// Authors: I.Kulakov; M.Zyzak
// Primary author: Rene Brun

// Run and understand. For documetation on classes see http://root.cern.ch/root/html530/ClassIndex.html

#include "TH1.h"
#include "TMath.h"
#include "TF1.h"
#include "TLegend.h"
#include "TCanvas.h"
#include "TRandom3.h"

  // Quadratic function
  // x   - array of arguments
  // par - array of parameters
Double_t fitFunction(Double_t *x, Double_t *par) {
   return par[0] + par[1]*x[0] + par[2]*x[0]*x[0];
}

void FittingDemoSimple_0() {

   const int nBins = 60;
   
   TCanvas *c1 = new TCanvas("c1","Fitting Demo",10,10,700,500);
   
   TH1F *histo = new TH1F("histo", "Quadratic Background",60,0,3);

   TRandom3 rand;
   for(int i=0; i < 1000;  i++) histo->Fill( (rand.Uniform()+rand.Uniform())*1.5 ); // fill with triangular distribution
   
     // create a TF1 with the range from 0 to 3 and 3 parameters
   TF1 *fitFcn = new TF1("fitFcn",fitFunction,0,3,3);

     // fit histo by fitFcn
   histo->Fit("fitFcn");
}
