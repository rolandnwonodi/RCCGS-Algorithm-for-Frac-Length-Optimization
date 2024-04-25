function f = objfun (x)
f = 103.8408*((x(:,1)^(0.713))*(x(:,2)^(-0.115))*(x(:,3)^(-0.058)))
F(x)= 300-objfun (x)
% this M-file contains the code and program run for the RCCGS Algorithm for
% fracture length optimization
%Generated random variables were imported from MS Excel as it is easier to
%use a spreadsheet for such purposes.

x1=[24.80788598
8.595233009
51.55125584
2.169866024
54.56160161
26.52363659
47.5777459
10.54902799
22.35236671
17.43766594
52.69936216
59.36826685
50.01861629
52.04565569
16.18152409
26.6481521
36.05273598
7.14865566
0.737937559
14.89425336
]
x1 =
   24.8079
    8.5952
   51.5513
    2.1699
   54.5616
   26.5236
   47.5777
   10.5490
   22.3524
   17.4377
   52.6994
   59.3683
   50.0186
   52.0457
   16.1815
   26.6482
   36.0527
    7.1487
    0.7379
   14.8943
x2=[102.7952513
87.19913327
38.62123478
142.7759026
155.1221656
22.43037202
72.19244972
2.586077456
171.0687582
147.4807581
39.23722037
146.4505753
43.94738609
37.19809565
57.72740867
125.6823023
98.97720267
125.3796197
79.10104678
68.75673696
]
x2 =
  102.7953
   87.1991
   38.6212
  142.7759
  155.1222
   22.4304
   72.1924
    2.5861
  171.0688
  147.4808
   39.2372
  146.4506
   43.9474
   37.1981
   57.7274
  125.6823
   98.9772
  125.3796
   79.1010
   68.7567
x3=[136.6519364
108.8884548
37.69524216
10.02087466
83.84295175
117.7731254
99.53147984
55.5269631
100.966216
131.5947142
36.12237922
82.56416517
28.32044435
15.30979339
124.0779443
11.9635609
114.6006653
84.28406629
102.0534074
106.5402997
]
x3 =
  136.6519
  108.8885
   37.6952
   10.0209
   83.8430
  117.7731
   99.5315
   55.5270
  100.9662
  131.5947
   36.1224
   82.5642
   28.3204
   15.3098
  124.0779
   11.9636
  114.6007
   84.2841
  102.0534
  106.5403
  
  %the vectors were put in columns for easy ploting.
X=[x1 x2 x3]
X =
   24.8079  102.7953  136.6519
    8.5952   87.1991  108.8885
   51.5513   38.6212   37.6952
    2.1699  142.7759   10.0209
   54.5616  155.1222   83.8430
   26.5236   22.4304  117.7731
   47.5777   72.1924   99.5315
   10.5490    2.5861   55.5270
   22.3524  171.0688  100.9662
   17.4377  147.4808  131.5947
   52.6994   39.2372   36.1224
   59.3683  146.4506   82.5642
   50.0186   43.9474   28.3204
   52.0457   37.1981   15.3098
   16.1815   57.7274  124.0779
   26.6482  125.6823   11.9636
   36.0527   98.9772  114.6007
    7.1487  125.3796   84.2841
    0.7379   79.1010  102.0534
   14.8943   68.7567  106.5403
% Fracture length was evaluated  from each individual points   
Lx=[-152.3395477
80.62529928
-618.9283229
210.7920603
-478.5322988
-270.0962484
-463.3880761
-95.62174041
-103.0653836
-38.24039997
-634.0832304
-533.0682039
-600.9204772
-679.0586626
-58.42831081
-235.713868
-299.1592065
112.7433178
261.3223826
-34.07192338
]
Lx =
 -152.3395
   80.6253
 -618.9283
  210.7921
 -478.5323
 -270.0962
 -463.3881
  -95.6217
 -103.0654
  -38.2404
 -634.0832
 -533.0682
 -600.9205
 -679.0587
  -58.4283
 -235.7139
 -299.1592
  112.7433
  261.3224
  -34.0719
% The functions were plotted to get the solution field.
plot(X, Lx)

%From the minimum function, the initial points were chosen
x0 = [14.894 68.756 106.54]
x0 =
   14.8940   68.7560  106.5400
% the bounds were specified
LB = [0 0 0]
LB =
     0     0     0
UB = [60 174 146]
UB =
 
60   174   146
%optimization option was specified. 
options = optimset('Largescale', 'off', 'outputfcn', @optimplotfval, 'PlotFcns', @optimplotx, 'Display', 'iter', 'TolFun', 1e-20)
options = 
                   Display: 'iter'
               MaxFunEvals: []
                   MaxIter: []
                    TolFun: 1.0000e-020
                      TolX: []
               FunValCheck: []
                 OutputFcn: @optimplotfval
                  PlotFcns: @optimplotx
           ActiveConstrTol: []
            BranchStrategy: []
           DerivativeCheck: []
               Diagnostics: []
             DiffMaxChange: []
             DiffMinChange: []
         GoalsExactAchieve: []
                GradConstr: []
                   GradObj: []
                   Hessian: []
                  HessMult: []
               HessPattern: []
                HessUpdate: []
           InitialHessType: []
         InitialHessMatrix: []
                  Jacobian: []
                 JacobMult: []
              JacobPattern: []
                LargeScale: 'off'
        LevenbergMarquardt: []
            LineSearchType: []
                  MaxNodes: []
                MaxPCGIter: []
                MaxRLPIter: []
                MaxSQPIter: []
                   MaxTime: []
             MeritFunction: []
                 MinAbsMax: []
       NodeDisplayInterval: []
        NodeSearchStrategy: []
          NonlEqnAlgorithm: []
        NoStopIfFlatInfeas: []
      PhaseOneTotalScaling: []
            Preconditioner: []
          PrecondBandWidth: []
            RelLineSrchBnd: []
    RelLineSrchBndDuration: []
          ShowStatusWindow: []
                   Simplex: []
                    TolCon: []
                    TolPCG: []
                 TolRLPFun: []
               TolXInteger: []
                  TypicalX: []
[x, fval] = fsolve(@objfun, x0, options)
f =
  -34.0709
Warning: Default trust-region dogleg method of FSOLVE cannot
 handle non-square systems; using Gauss-Newton method instead.
> In fsolve at 248
f =
  -34.0709
f =
  -34.0709
f =
  -34.0709
                                                     Directional 
 Iteration  Func-count    Residual     Step-size      derivative 
     0           4         1160.83
f =
   -1.4739
f =
    7.9922
f =
   -0.0115
f =
   -0.0115
f =
   -0.0115
f =
   -0.0115
f =
   -0.0115
     1          11     0.000132171         1.04          -0.767
Iteration matrix ill-conditioned - Switching to LM method.
f =
 -2.0030e-005
f =
    0.0023
f =
  1.3358e-12
f =
  1.3358e-011
f =
 -3.1873e-006
f =
  5.1410e-007
f =
  2.5929e-007
     2          18    1.78442e-022            1       3.07e-013        0.48918 
Optimization terminated: directional derivative along
 search direction less than TolFun and infinity-norm of
 gradient less than 10*(TolFun+TolX).
x =
   12.8106   68.8288  106.5637
fval =
  1.3358e-011