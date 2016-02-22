function predict_curve(cost,theta,X,y)

fprintf('Cost at theta found by fminunc: %f\n', cost);
fprintf('theta: \n');
fprintf(' %f \n', theta);
h=X*theta;
figure;
plot(X(:,2),y,'ro', 'MarkerSize', 10);hold on
plot(X(:,2),h);
xlabel('pH');% Set  x label
ylabel('Absorbance'); % Set  y label

end