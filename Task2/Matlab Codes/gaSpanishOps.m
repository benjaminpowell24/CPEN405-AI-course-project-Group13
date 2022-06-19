function [x,fval,exitflag,output,population,score] = gaSpanishOps(nvars,lb,ub,MaxGenerations_Data,MaxStallGenerations_Data)
%% This is an auto generated MATLAB file from Optimization Tool.

%% Start with the default options
options = optimoptions('ga');
%% Modify options setting
options = optimoptions(options,'MaxGenerations', MaxGenerations_Data);
options = optimoptions(options,'MaxStallGenerations', MaxStallGenerations_Data);
options = optimoptions(options,'Display', 'off');
%options = optimoptions(options,'PlotFcn', {  @gaplotbestf @gaplotscores });
[x,fval,exitflag,output,population,score] = ...
ga(@opSpanishCost,nvars,[],[],[],[],lb,ub,[],[],options);
