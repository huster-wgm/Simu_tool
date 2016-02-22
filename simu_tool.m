cd 'c:/users/lab/desktop/simu'
X=load('data_x.txt');
y=load('data_y.txt');
m=length(y);
J_of_predict=zeros(3,1);
fprintf('ploting data ... \n');

fprintf('start try linear regression with single factor x \n');

X=[ones(m,1),X];
n = size(X,2);
initial_theta=zeros(n,1);

options = optimset('GradObj', 'on', 'MaxIter', 400);
% Run fminunc to obtain the optimal theta
% This function will return theta and the cost
[theta, cost] = ...
fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);

% Print theta to screen
J_of_predict(1)=cost;
predict_curve(cost,theta,X,y);hold on
title('predicted linear regression function \n');

%{
initial_theta=zeros(n,1);
options = optimset('GradObj', 'on', 'MaxIter', 400);
% Run fminunc to obtain the optimal theta
% This function will return theta and the cost
[theta, cost] = ...
fminunc(@(t)(costFunction(t, X, y)), initial_theta, options);
%}

fprintf('start trying polynomial fuction up to power 4 \n');
X=load('data_x.txt');
% try polynomial function up x^4
degree=4;
% find polynomial function power which
% fit well with training set

[cost,theta,X_poly,power]=best_poly(X,y,degree);

J_of_predict(2)=cost;
predict_curve(cost,theta,X_poly,y);hold on
str=['predicted polynomial fuction with X power:',num2str(power)];
title(str);


X=load('data_x.txt');
[exp_X]=expFeature(X);
exp_X=[ones(m,1),exp_X];
n = size(exp_X,2);
initial_theta=zeros(n,1);

options = optimset('GradObj', 'on', 'MaxIter', 400);
% Run fminunc to obtain the optimal theta
% This function will return theta and the cost
[theta, cost] = ...
fminunc(@(t)(costFunction(t, exp_X, y)), initial_theta, options);

% Print theta to screen
J_of_predict(3)=cost;
predict_curve(cost,theta,exp_X,y);hold on
title('predicted Exponential function \n');

fprintf('cost of three_predict_functions : \n');
fprintf(' %f \n', J_of_predict);





