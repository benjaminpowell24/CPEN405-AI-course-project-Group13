disp('############################################################################################');
disp('=== Optimization using Genetic Algorithm ===');
%%%=== Optimizing costs for [English] operators ===%%%
nvars = 7;
lb = [6 13 4 0 2 5 0];
ub = [12 26 8 2 4 10 2];
MaxGenerations_Data = 100;
MaxStallGenerations_Data = 100;
[x,fval,exitflag,output,population,score] = gaEnglishOps(nvars,lb,ub,MaxGenerations_Data,MaxStallGenerations_Data);
fprintf('\n=== Optimizing costs for [English] operators ===\n\nOptimal Cost = $%.3f\n\nOptimal Conditons:\n', ceil(fval));
fprintf('a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, y = %d\n\n', ceil(x(1)), ceil(x(2)), ceil(x(3)), ceil(x(4)), ceil(x(5)), ceil(x(6)), ceil(x(7)));

%%%=== Optimizing costs for [Spanish] operators ===%%%
nvars = 5;
lb = [2 3 2 2 1];
ub = [4 6 4 4 2];
MaxGenerations_Data = 100;
MaxStallGenerations_Data = 100;
[x,fval,exitflag,output,population,score] = gaSpanishOps(nvars,lb,ub,MaxGenerations_Data,MaxStallGenerations_Data);
fprintf('=== Optimizing costs for [Spanish] operators ===\n\nOptimal Cost = $%.3f\n\nOptimal Conditons:\n', ceil(fval));
fprintf('f = %d, g = %d, h = %d, i = %d, j = %d\n\n', ceil(x(1)), ceil(x(2)), ceil(x(3)), ceil(x(4)), ceil(x(5)));

disp('############################################################################################');
disp('=== Optimization using Simulated Annealing Algorithm ===');
%%%=== Optimizing costs for [English] operators ===%%%
lb = [6 13 4 0 2 5 0];
ub = [12 26 8 2 4 10 2];
x0 = [randi([6 12]), randi([13 26]), randi([4 8]), randi([0 2]), randi([2 4]), randi([5 10]), randi([0 2])];
MaxIterations_Data = 500;
[x,fval,exitflag,output] = saEnglishOps(x0,lb,ub,MaxIterations_Data);
fprintf('\n=== Optimizing costs for [English] operators ===\n\nOptimal Cost = $%.3f\n\nOptimal Conditons:\n', ceil(fval));
fprintf('a = %d, b = %d, c = %d, d = %d, e = %d, f = %d, y = %d\n\n', ceil(x(1)), ceil(x(2)), ceil(x(3)), ceil(x(4)), ceil(x(5)), ceil(x(6)), ceil(x(7)));

%%%=== Optimizing costs for [Spanish] operators ===%%%
lb = [2 3 2 2 1];
ub = [4 6 4 4 2];
x0 = [randi([2 4]), randi([3 6]), randi([2 4]), randi([2 4]), randi([1 2])];
MaxIterations_Data = 500;
[x,fval,exitflag,output] = saSpanishOps(x0,lb,ub,MaxIterations_Data);
fprintf('=== Optimizing costs for [Spanish] operators ===\n\nOptimal Cost = $%.3f\n\nOptimal Conditons:\n', ceil(fval));
fprintf('f = %d, g = %d, h = %d, i = %d, j = %d\n\n', ceil(x(1)), ceil(x(2)), ceil(x(3)), ceil(x(4)), ceil(x(5)));
disp('############################################################################################');