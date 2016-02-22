function [exp_X] = expFeature(X)

exp_X=zeros(size(X),2);
exp_X(:,1)=X;
exp_X(:,2)=exp(X);

end