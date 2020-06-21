#define Int_t int

static const float INF = .01, ZERO = 0.0, ONE = 1.;
static const float c_light = 0.000299792458;
static const float c_light_i = 1./0.000299792458;

//TODO describe data structures, which you will need to use

void ExtrapolateALight
( 
 float4 T [], // input track parameters (x,y,tx,ty,Q/p)
 CovV &C,     // input covariance matrix
 const float4 &z_out  , // extrapolate to this z position
 float4       &qp0    , // use Q/p linearisation at this value
 FieldRegion &F
 )
{
  //
  //  Part of the analytic extrapolation formula with error (c_light*B*dz)^4/4!
  //  
// TimeStampCounter unitimer2[3];
// unitimer2[0].Start();
  const float  
    c1 = 1., c2 = 2., c3 = 3., c4 = 4., c6 = 6., c9 = 9., c15 = 15., c18 = 18., c45 = 45.,
    c2i = 1./2., c3i = 1./3., c6i = 1./6., c12i = 1./12.;

  float4 qp = T[4];
// unitimer2[0].Stop();

  float4 dz = (z_out - T[5]);
// unitimer2[1].Start();
  float4 dz2 = dz*dz;
// unitimer2[1].Stop();
  float4 dz3 = dz2*dz;

  float4 T0 = T[0];
  float4 T1 = T[1];
  float4 T2 = T[2];
  float4 T3 = T[3];
//  float4 T4 = T[4];
  float4 T5 = T[5];

  // construct coefficients 

  float4 x   = T[2]; // tx !!
  float4 y   = T[3]; // ty !!
  float4 xx  = x*x;
  float4 xy = x*y;
  float4 yy = y*y;
  float4 y2 = y*c2;
  float4 x2 = x*c2;
  float4 x4 = x*c4;
  float4 xx31 = xx*c3+c1;
  float4 xx159 = xx*c15+c9;

  float4 Ay = -xx-c1;
  float4 Ayy = x*(xx*c3+c3);
  float4 Ayz = -c2*xy; 
  float4 Ayyy = -(c15*xx*xx+c18*xx+c3);

  float4 Ayy_x = c3*xx31;
  float4 Ayyy_x = -x4*xx159;

  float4 Bx = yy+c1; 
  float4 Byy = y*xx31; 
  float4 Byz = c2*xx+c1;
  float4 Byyy = -xy*xx159;

  float4 Byy_x = c6*xy;
  float4 Byyy_x = -y*(c45*xx+c9);
  float4 Byyy_y = -x*xx159;

  // end of coefficients calculation

  float4 t2   = c1 + xx + yy;
  float4 t    = sqrt( t2 );
  float4 h    = qp0*c_light;
  float4 ht   = h*t;

  // get field integrals
  float4 ddz = T5-F.z;
  float4 Fx0 = F.x0 + F.x1*ddz + F.x2*ddz*ddz;
  float4 Fx1 = (F.x1 + c2*F.x2*ddz)*dz;
  float4 Fx2 = F.x2*dz2;
  float4 Fy0 = F.y0 + F.y1*ddz + F.y2*ddz*ddz;
  float4 Fy1 = (F.y1 + c2*F.y2*ddz)*dz;
  float4 Fy2 = F.y2*dz2;
  float4 Fz0 = F.z0 + F.z1*ddz + F.z2*ddz*ddz;
  float4 Fz1 = (F.z1 + c2*F.z2*ddz)*dz;
  float4 Fz2 = F.z2*dz2;

  // 
// cout << "1: Cycles = " << unitimer2[0].Cycles() << "\t";
// cout << "2: Cycles = " << unitimer2[1].Cycles() << "\t";
// cout << "2Fil: Cycles = " << unitimer2[2].Cycles() << " ";
  float4 sx = ( Fx0 + Fx1*c2i + Fx2*c3i );
  float4 sy = ( Fy0 + Fy1*c2i + Fy2*c3i );
  float4 sz = ( Fz0 + Fz1*c2i + Fz2*c3i );

  float4 Sx = ( Fx0*c2i + Fx1*c6i + Fx2*c12i );
  float4 Sy = ( Fy0*c2i + Fy1*c6i + Fy2*c12i );
  float4 Sz = ( Fz0*c2i + Fz1*c6i + Fz2*c12i );

  float4 syz;
  { 
    const float 
      d = 1./360., 
      c00 = 30.*6.*d, c01 = 30.*2.*d,   c02 = 30.*d,
      c10 = 3.*40.*d, c11 = 3.*15.*d,   c12 = 3.*8.*d, 
      c20 = 2.*45.*d, c21 = 2.*2.*9.*d, c22 = 2.*2.*5.*d;
    syz = Fy0*( c00*Fz0 + c01*Fz1 + c02*Fz2) 
      +   Fy1*( c10*Fz0 + c11*Fz1 + c12*Fz2) 
      +   Fy2*( c20*Fz0 + c21*Fz1 + c22*Fz2) ;
  }

  float4 Syz;
  {
    const float 
      d = 1./2520., 
      c00 = 21.*20.*d, c01 = 21.*5.*d, c02 = 21.*2.*d,
      c10 =  7.*30.*d, c11 =  7.*9.*d, c12 =  7.*4.*d, 
      c20 =  2.*63.*d, c21 = 2.*21.*d, c22 = 2.*10.*d;
    Syz = Fy0*( c00*Fz0 + c01*Fz1 + c02*Fz2 ) 
      +   Fy1*( c10*Fz0 + c11*Fz1 + c12*Fz2 ) 
      +   Fy2*( c20*Fz0 + c21*Fz1 + c22*Fz2 ) ;
  }

  float4 syy  = sy*sy*c2i;
  float4 syyy = syy*sy*c3i;

  float4 Syy ;   
  {
    const float  
    d= 1./2520., c00= 420.*d, c01= 21.*15.*d, c02= 21.*8.*d,
    c03= 63.*d, c04= 70.*d, c05= 20.*d;
    Syy =  Fy0*(c00*Fy0+c01*Fy1+c02*Fy2) + Fy1*(c03*Fy1+c04*Fy2) + c05*Fy2*Fy2 ;
  }
  
  float4 Syyy;
  {
    const float 
      d = 1./181440., 
      c000 =   7560*d, c001 = 9*1008*d, c002 = 5*1008*d, 
      c011 = 21*180*d, c012 = 24*180*d, c022 =  7*180*d, 
      c111 =    540*d, c112 =    945*d, c122 =    560*d, c222 = 112*d;
    float4 Fy22 = Fy2*Fy2;
    Syyy = Fy0*( Fy0*(c000*Fy0+c001*Fy1+c002*Fy2)+ Fy1*(c011*Fy1+c012*Fy2)+c022*Fy22 )
      +    Fy1*( Fy1*(c111*Fy1+c112*Fy2)+c122*Fy22) + c222*Fy22*Fy2                  ;
  }
  
  
  float4 sA1   = sx*xy   + sy*Ay   + sz*y ;
  float4 sA1_x = sx*y - sy*x2 ;
  float4 sA1_y = sx*x + sz ;

  float4 sB1   = sx*Bx   - sy*xy   - sz*x ;
  float4 sB1_x = -sy*y - sz ;
  float4 sB1_y = sx*y2 - sy*x ;

  float4 SA1   = Sx*xy   + Sy*Ay   + Sz*y ;
  float4 SA1_x = Sx*y - Sy*x2 ;
  float4 SA1_y = Sx*x + Sz;

  float4 SB1   = Sx*Bx   - Sy*xy   - Sz*x ;
  float4 SB1_x = -Sy*y - Sz;
  float4 SB1_y = Sx*y2 - Sy*x;


  float4 sA2   = syy*Ayy   + syz*Ayz ;
  float4 sA2_x = syy*Ayy_x - syz*y2 ;
  float4 sA2_y = -syz*x2 ;
  float4 sB2   = syy*Byy   + syz*Byz  ;
  float4 sB2_x = syy*Byy_x + syz*x4 ;
  float4 sB2_y = syy*xx31 ;
  
  float4 SA2   = Syy*Ayy   + Syz*Ayz ;
  float4 SA2_x = Syy*Ayy_x - Syz*y2 ;
  float4 SA2_y = -Syz*x2 ;
  float4 SB2   = Syy*Byy   + Syz*Byz ;
  float4 SB2_x = Syy*Byy_x + Syz*x4 ;
  float4 SB2_y = Syy*xx31 ;

  float4 sA3   = syyy*Ayyy  ;
  float4 sA3_x = syyy*Ayyy_x;
  float4 sB3   = syyy*Byyy  ;
  float4 sB3_x = syyy*Byyy_x;
  float4 sB3_y = syyy*Byyy_y;

 
  float4 SA3   = Syyy*Ayyy  ;
  float4 SA3_x = Syyy*Ayyy_x;
  float4 SB3   = Syyy*Byyy  ;
  float4 SB3_x = Syyy*Byyy_x;
  float4 SB3_y = Syyy*Byyy_y;

  float4 ht1 = ht*dz;
  float4 ht2 = ht*ht*dz2;
  float4 ht3 = ht*ht*ht*dz3;
  float4 ht1sA1 = ht1*sA1;
  float4 ht1sB1 = ht1*sB1;
  float4 ht1SA1 = ht1*SA1;
  float4 ht1SB1 = ht1*SB1;
  float4 ht2sA2 = ht2*sA2;
  float4 ht2SA2 = ht2*SA2;
  float4 ht2sB2 = ht2*sB2;
  float4 ht2SB2 = ht2*SB2;
  float4 ht3sA3 = ht3*sA3;
  float4 ht3sB3 = ht3*sB3; 
  float4 ht3SA3 = ht3*SA3;
  float4 ht3SB3 = ht3*SB3;

  T[0] = T0 + (x + ht1SA1 + ht2SA2 + ht3SA3)*dz ;
  T[1] = T1 + (y + ht1SB1 + ht2SB2 + ht3SB3)*dz ;
  T[2] = T2 + ht1sA1 + ht2sA2 + ht3sA3;
  T[3] = T3 + ht1sB1 + ht2sB2 + ht3sB3;
  T[5]+= dz;
  
  float4 ctdz  = c_light*t*dz;
  float4 ctdz2 = c_light*t*dz2;

  float4 dqp = qp - qp0;
  float4 t2i = c1/t2;// /t2;
  float4 xt2i = x*t2i;
  float4 yt2i = y*t2i;
  float4 tmp0 = ht1SA1 + c2*ht2SA2 + c3*ht3SA3;
  float4 tmp1 = ht1SB1 + c2*ht2SB2 + c3*ht3SB3;
  float4 tmp2 = ht1sA1 + c2*ht2sA2 + c3*ht3sA3;
  float4 tmp3 = ht1sB1 + c2*ht2sB2 + c3*ht3sB3;

  float4 j02 = dz*(c1 + xt2i*tmp0 + ht1*SA1_x + ht2*SA2_x + ht3*SA3_x);
  float4 j12 = dz*(     xt2i*tmp1 + ht1*SB1_x + ht2*SB2_x + ht3*SB3_x);
  float4 j22 =     c1 + xt2i*tmp2 + ht1*sA1_x + ht2*sA2_x + ht3*sA3_x ;
  float4 j32 =          xt2i*tmp3 + ht1*sB1_x + ht2*sB2_x + ht3*sB3_x ;
    
  float4 j03 = dz*(     yt2i*tmp0 + ht1*SA1_y + ht2*SA2_y );
  float4 j13 = dz*(c1 + yt2i*tmp1 + ht1*SB1_y + ht2*SB2_y + ht3*SB3_y );
  float4 j23 =          yt2i*tmp2 + ht1*sA1_y + ht2*sA2_y  ;
  float4 j33 =     c1 + yt2i*tmp3 + ht1*sB1_y + ht2*sB2_y + ht3*sB3_y ;
    
  float4 j04 = ctdz2*( SA1 + c2*ht1*SA2 + c3*ht2*SA3 );
  float4 j14 = ctdz2*( SB1 + c2*ht1*SB2 + c3*ht2*SB3 );
  float4 j24 = ctdz *( sA1 + c2*ht1*sA2 + c3*ht2*sA3 );
  float4 j34 = ctdz *( sB1 + c2*ht1*sB2 + c3*ht2*sB3 );
  
  // extrapolate inverse momentum
  
  T[0]+=j04*dqp;
  T[1]+=j14*dqp;
  T[2]+=j24*dqp;
  T[3]+=j34*dqp;

  //          covariance matrix transport 
 
  float4 c42 = C.C42, c43 = C.C43;

  float4 cj00 = C.C00 + C.C20*j02 + C.C30*j03 + C.C40*j04;
//  float4 cj10 = C.C10 + C.C21*j02 + C.C31*j03 + C.C41*j04;
  float4 cj20 = C.C20 + C.C22*j02 + C.C32*j03 + c42*j04;
  float4 cj30 = C.C30 + C.C32*j02 + C.C33*j03 + c43*j04;
 
  float4 cj01 = C.C10 + C.C20*j12 + C.C30*j13 + C.C40*j14;
  float4 cj11 = C.C11 + C.C21*j12 + C.C31*j13 + C.C41*j14;
  float4 cj21 = C.C21 + C.C22*j12 + C.C32*j13 + c42*j14;
  float4 cj31 = C.C31 + C.C32*j12 + C.C33*j13 + c43*j14;
 
//  float4 cj02 = C.C20*j22 + C.C30*j23 + C.C40*j24;
//  float4 cj12 = C.C21*j22 + C.C31*j23 + C.C41*j24;
  float4 cj22 = C.C22*j22 + C.C32*j23 + c42*j24;
  float4 cj32 = C.C32*j22 + C.C33*j23 + c43*j24;
 
//  float4 cj03 = C.C20*j32 + C.C30*j33 + C.C40*j34;
//  float4 cj13 = C.C21*j32 + C.C31*j33 + C.C41*j34;
  float4 cj23 = C.C22*j32 + C.C32*j33 + c42*j34;
  float4 cj33 = C.C32*j32 + C.C33*j33 + c43*j34;

  C.C40+= c42*j02 + c43*j03 + C.C44*j04; // cj40
  C.C41+= c42*j12 + c43*j13 + C.C44*j14; // cj41
  C.C42 = c42*j22 + c43*j23 + C.C44*j24; // cj42
  C.C43 = c42*j32 + c43*j33 + C.C44*j34; // cj43

  C.C00 = cj00 + j02*cj20 + j03*cj30 + j04*C.C40;
  C.C10 = cj01 + j02*cj21 + j03*cj31 + j04*C.C41;
  C.C11 = cj11 + j12*cj21 + j13*cj31 + j14*C.C41;

  C.C20 = j22*cj20 + j23*cj30 + j24*C.C40 ;
  C.C30 = j32*cj20 + j33*cj30 + j34*C.C40 ;
  C.C21 = j22*cj21 + j23*cj31 + j24*C.C41 ;
  C.C31 = j32*cj21 + j33*cj31 + j34*C.C41 ;
  C.C22 = j22*cj22 + j23*cj32 + j24*C.C42 ;
  C.C32 = j32*cj22 + j33*cj32 + j34*C.C42 ;
  C.C33 = j32*cj23 + j33*cj33 + j34*C.C43 ;

}

struct HitInfo{
  float4 cos_phi, sin_phi, sigma2, sigma216;
};

void Filter( TrackV &track, HitInfo &info, float4 &u, float4 &w )
{

  // convert input
  float4 *T = track.T;
  CovV &C = track.C;

  float4 wi, zeta, zetawi, HCH;
  
  float4 F0, F1, F2, F3, F4;
  float4  K1, K2, K3, K4;

//   float4 wi, zeta, zetawi, HCH;
//   
//   float4 F0, F1, F2, F3, F4;
//   float4  K1, K2, K3, K4;
  
  zeta = info.cos_phi*T[0] + info.sin_phi*T[1] - u;
  // F = CH'

  F0 = info.cos_phi*C.C00 + info.sin_phi*C.C10;
  F1 = info.cos_phi*C.C10 + info.sin_phi*C.C11;
  
  HCH = ( F0*info.cos_phi +F1*info.sin_phi );

  
  F2 = info.cos_phi*C.C20 + info.sin_phi*C.C21;
  F3 = info.cos_phi*C.C30 + info.sin_phi*C.C31;
  F4 = info.cos_phi*C.C40 + info.sin_phi*C.C41;

  //TODO apply mask 
//  int4 initialised = (HCH<info.sigma216);
  wi = w/(info.sigma2 +HCH);

//  zetawi = w* zeta /( convert_float4(initialised & convert_int4(info.sigma2)) + HCH);
//  track.Chi2 += convert_float4(initialised & convert_int4((zeta * zetawi)));    

  zetawi = w* zeta /( info.sigma2 + HCH);
  track.Chi2 += zeta * zetawi;    

  track.NDF  += w;

  K1 = F1*wi;
  K2 = F2*wi;
  K3 = F3*wi;
  K4 = F4*wi;

  T[0]-= F0*zetawi;
  T[1]-= F1*zetawi;
  T[2]-= F2*zetawi;
  T[3]-= F3*zetawi;
  T[4]-= F4*zetawi;

  C.C00-= F0*F0*wi;
  C.C10-= K1*F0;
  C.C11-= K1*F1;
  C.C20-= K2*F0;
  C.C21-= K2*F1;
  C.C22-= K2*F2;
  C.C30-= K3*F0;
  C.C31-= K3*F1;
  C.C32-= K3*F2;
  C.C33-= K3*F3;
  C.C40-= K4*F0;
  C.C41-= K4*F1;
  C.C42-= K4*F2;
  C.C43-= K4*F3;
  C.C44-= K4*F4;
}

void FilterFirst( TrackV &track, HitV &hit, Station &st )
{

  CovV &C = track.C;
  float4 w1 = ONE-hit.w;
  float4 sigma2 = hit.w*st.Sigma2 + w1*INF;
  // initialize covariance matrix 
  C.C00= sigma2; 
  C.C10= ZERO;      C.C11= sigma2; 
  C.C20= ZERO;      C.C21= ZERO;      C.C22= INF;
  C.C30= ZERO;      C.C31= ZERO;      C.C32= ZERO; C.C33= INF;
  C.C40= ZERO;      C.C41= ZERO;      C.C42= ZERO; C.C43= ZERO; C.C44= INF;

  track.T[0] = hit.w*hit.x + w1*track.T[0];
  track.T[1] = hit.w*hit.y + w1*track.T[1];
  track.NDF = -3.0;
  track.Chi2 = ZERO;
}

void AddMaterial( TrackV &track, Station &st, float4 &qp0 )
{
  const float mass2 = 0.1396*0.1396;

  float4 tx = track.T[2];
  float4 ty = track.T[3];
  float4 txtx = tx*tx;
  float4 tyty = ty*ty;
  float4 txtx1 = txtx + ONE;
  float4 h = txtx + tyty;
  float4 t = sqrt(txtx1 + tyty);
  float4 h2 = h*h;
  float4 qp0t = qp0*t;
  
  const float c1=0.0136, c2=c1*0.038, c3=c2*0.5, c4=-c3/2.0, c5=c3/3.0, c6=-c3/4.0;
    
  float4 s0 = (c1+c2*st.logRadThick + c3*h + h2*(c4 + c5*h +c6*h2) )*qp0t;
    
  float4 a = (ONE+mass2*qp0*qp0t)*st.RadThick*s0*s0;

  CovV &C = track.C;

  C.C22 += txtx1*a;
  C.C32 += tx*ty*a; C.C33 += (ONE+tyty)*a; 
}

void GuessVec( TrackV &t, Station *vStations, int NStations )
{
  float4 *T = t.T;

  Int_t NHits = NStations;

  float4 A0, A1=ZERO, A2=ZERO, A3=ZERO, A4=ZERO, A5=ZERO, a0, a1=ZERO, a2=ZERO,
    b0, b1=ZERO, b2=ZERO;
  float4 z0, x, y, z, S, w, wz, wS;

  Int_t i=NHits-1;
  z0 = vStations[i].zhit;
  HitV *hlst = &(t.vHits[i]);
  w = hlst->w;
  A0 = w;
  a0 = w*hlst->x;
  b0 = w*hlst->y;
  HitV *h = t.vHits;
  Station *st = vStations;
  for( ; h!=hlst; h++, st++ ){
    x = h->x;
    y = h->y;
    w = h->w;
    z = st->zhit - z0;
//          printf("cl: x =%f \n y= %f \n z= %f \n w=%f \n", x , y, z0, st->zhit);
    S = st->Sy;
    wz = w*z;
    wS = w*S;
    A0+=w; 
    A1+=wz;  A2+=wz*z;
    A3+=wS;  A4+=wS*z; A5+=wS*S;
    a0+=w*x; a1+=wz*x; a2+=wS*x;
    b0+=w*y; b1+=wz*y; b2+=wS*y;
  }

  float4 A3A3 = A3*A3;
  float4 A3A4 = A3*A4;
  float4 A1A5 = A1*A5;
  float4 A2A5 = A2*A5;
  float4 A4A4 = A4*A4;
  
  float4 det = 1./(-A2*A3A3 + A1*( A3A4+A3A4 - A1A5) + A0*(A2A5-A4A4));
  float4 Ai0 = ( -A4A4 + A2A5 );
  float4 Ai1 = (  A3A4 - A1A5 );
  float4 Ai2 = ( -A3A3 + A0*A5 );
  float4 Ai3 = ( -A2*A3 + A1*A4 );
  float4 Ai4 = (  A1*A3 - A0*A4 );
  float4 Ai5 = ( -A1*A1 + A0*A2 );

  float4 L, L1;
  T[0] = (Ai0*a0 + Ai1*a1 + Ai3*a2)*det;
  T[2] = (Ai1*a0 + Ai2*a1 + Ai4*a2)*det;
  float4 txtx1 = 1.+T[2]*T[2];
  L    = (Ai3*a0 + Ai4*a1 + Ai5*a2)*det /(txtx1);
  L1 = L*T[2];
  A1 = A1 + A3*L1;
  A2 = A2 + ( A4 + A4 + A5*L1 )*L1;
  b1+= b2 * L1;
  det = 1./(-A1*A1+A0*A2);

  T[1] = (  A2*b0 - A1*b1 )*det;
  T[3] = ( -A1*b0 + A0*b1 )*det;
  T[4] = -L*c_light_i*rsqrt(txtx1 +T[3]*T[3]);
  T[5] = z0;
  
//  printf("cl: %f \n %f \n %f \n %f \n", T[0].x, T[1].x, T[2].x, T[4].x);

}   

void Fit( TrackV &t, Station vStations[], int NStations )
{
  HitInfo Xinfo, Yinfo;
  const float c16 = 16.;
  Xinfo.cos_phi = ONE; 
  Xinfo.sin_phi = ZERO;
  Xinfo.sigma2  = vStations[0].Sigma2;
  Xinfo.sigma216 = Xinfo.sigma2*c16;
  Yinfo.cos_phi = ZERO;
  Yinfo.sin_phi = ONE; 
  Yinfo.sigma2  = Xinfo.sigma2;
  Yinfo.sigma216 = Xinfo.sigma216;

  GuessVec( t, vStations,NStations );
  
  // downstream

  FieldRegion f;
  float4 z0,z1,z2, dz;
  FieldVector H0, H1, H2;

  float4 qp0 = t.T[4];
  Int_t i= NStations-1;
  HitV *h = &t.vHits[i];

  FilterFirst( t, *h, vStations[i] );
  AddMaterial( t, vStations[ i ], qp0 );

  z1 = vStations[ i ].z;
  vStations[i].Map.GetField(t.T[0],t.T[1], H1);
  H1.Combine( h->H, h->w );

  z2 = vStations[ i-2 ].z;
  dz = z2-z1;
  vStations[ i-2 ].Map.GetField(t.T[0]+t.T[2]*dz,t.T[1]+t.T[3]*dz,H2);
  h = &t.vHits[i-2];
  H2.Combine( h->H, h->w );

  for( --i; i>=0; i-- ){
    h = &t.vHits[i];
    Station &st = vStations[i];
    z0 = st.z;    
    dz = (z1-z0);
    st.Map.GetField(t.T[0]-t.T[2]*dz,t.T[1]-t.T[3]*dz,H0);
    H0.Combine( h->H, h->w );
    f.Set( H0, z0, H1, z1, H2, z2);

    ExtrapolateALight( t.T, t.C, st.zhit, qp0, f );
    AddMaterial( t, st, qp0 );
    Filter( t, Xinfo, h->x, h->w );
    Filter( t, Yinfo, h->y, h->w );

    H2 = H1; 
    z2 = z1;
    H1 = H0; 
    z1 = z0;
  }
}

//TODO write the kernal function
