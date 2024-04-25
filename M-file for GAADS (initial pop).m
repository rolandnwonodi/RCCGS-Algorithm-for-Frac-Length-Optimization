function [X,FVAL,REASON,OUTPUT,POPULATION,SCORES] =  M-Practical Optimization
%   This is an auto generated M file to do optimization with
%   Genetic Algorithm and Direct Search Toolbox.

% Fitness function
fitnessFunction = @objfun;
% Number of Variables
nvars = 3 ;
% Linear inequality constraints
Aineq = [];
Bineq = [];
% Linear equality constraints
Aeq = [];
Beq = [];
% Bounds
LB = [  0 0 0 ];
UB = [  60 174 146 ];
% Nonlinear constraints
nonlconFunction = @simple_constraint;
% Start with default options
options = gaoptimset;
% Modify some parameters
options = gaoptimset(options,'PopulationSize' ,100);
options = gaoptimset(options,'InitialPopulation' ,[  50 174 146 ]);
options = gaoptimset(options,'InitialScores' ,300);
options = gaoptimset(options,'Display' ,'off');
options = gaoptimset(options,'PlotFcns' ,{  @gaplotbestf @gaplotbestindiv });
% Run GA
[X,FVAL,REASON,OUTPUT,POPULATION,SCORES] = ga(fitnessFunction,nvars,Aineq,Bineq,Aeq,Beq,LB,UB,nonlconFunction,options);
