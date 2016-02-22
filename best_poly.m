function [cost,theta,X_poly,power]=best_poly(X,y,degree)
   cost=0;
   temp=zeros(degree,1);
   for i=1:degree
      [theta,X_poly,cost]=poly_cost(X,y,i);
      temp(i)=cost;
      
   end
   
   [val,loc]=min(temp);
   power=loc;
   [theta,X_poly,cost]=poly_cost(X,y,power);
   
end