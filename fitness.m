function [res] = fitness(X, Y)
 arguments
     X
     Y
 end
 
 res = -(sin(X+Y)+((X-Y)^2)-1.5*X+2.5*Y+1);
 return