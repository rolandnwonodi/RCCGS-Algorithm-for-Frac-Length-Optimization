function [x,fval,exitflag,output,lambda,grad,hessian] = M-file for optimization tool
% This is an auto generated M-file to do optimization with the Optimization Toolbox.
% Optimization Toolbox is required to run this M-file.

% Start with the default options
options = optimset;
% Modify options setting
options = optimset(options,'Display' ,'off');
options = optimset(options,'LargeScale' ,'on');
[x,fval,exitflag,output,lambda,grad,hessian] = ...
fmincon([],[],[],[],[],[],[],[],[],options);
