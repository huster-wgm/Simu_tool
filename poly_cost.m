function [theta,X_poly,cost]=poly_cost(X,y,degree)
      [X_poly] = polyFeatures(X, degree);
      n = size(X_poly,2);
      initial_theta=zeros(n,1);
      options = optimset('GradObj', 'on', 'MaxIter', 400);
      % Run fminunc to obtain the optimal theta
      % This function will return theta and the cost
      [theta, cost] = ...
      fminunc(@(t)(costFunction(t, X_poly, y)), initial_theta, options);
      
      
end