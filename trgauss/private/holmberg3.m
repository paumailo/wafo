function E=holmberg3(S,a,b,Q1,Q2,Q3)
% HOLMBERG3 Computes moments for higher order reliability methods.
%
% CALL: E=holmberg3(S,a,b,Q1,Q2,Q3);
%
% Computation of the expectation of 
% sqrt(pi/2)*(b'*X)*(X'*Q1*X)(X'*Q2*X)*(X'*Q3*X)(2*cdfnorm(a'*X)-1)
% if S is normally distributed with mean zero and covariance matrix
% S.
Q1=0.5*(Q1+Q1');
Q2=0.5*(Q2+Q2');
Q3=0.5*(Q3+Q3');

E=-1/8*(15*1*(a'*S*b)*(2*a'*(S*Q1*S)*a)*(2*a'*(S*Q2*S)*a)*(2*a'*(S*Q3*S)*a)-6*holmquist1(S,Q1)*(a'*S*b)*(2*a'*(S*Q2*S)*a)*(2*a'*(S*Q3*S)*a)-6*1*(2*a'*(S*Q3*S)*b)*(2*a'*(S*Q1*S)*a)*(2*a'*(S*Q2*S)*a)-6*1*(2*a'*(S*Q2*S)*b)*(2*a'*(S*Q1*S)*a)*(2*a'*(S*Q3*S)*a)-6*holmquist1(S,Q3)*(a'*S*b)*(2*a'*(S*Q1*S)*a)*(2*a'*(S*Q2*S)*a)-6*holmquist1(S,Q2)*(a'*S*b)*(2*a'*(S*Q1*S)*a)*(2*a'*(S*Q3*S)*a)+4*holmquist1(S,Q3)*(2*a'*(S*Q1*S)*b)*(2*a'*(S*Q2*S)*a)+4*holmquist1(S,Q2)*(2*a'*(S*Q1*S)*b)*(2*a'*(S*Q3*S)*a)+4*holmquist1(S,Q1)*(2*a'*(S*Q3*S)*b)*(2*a'*(S*Q2*S)*a)+4*holmquist1(S,Q1)*(2*a'*(S*Q2*S)*b)*(2*a'*(S*Q3*S)*a)+4*holmquist1(S,Q3)*(2*a'*(S*Q2*S)*b)*(2*a'*(S*Q1*S)*a)+4*holmquist1(S,Q2)*(2*a'*(S*Q3*S)*b)*(2*a'*(S*Q1*S)*a)-6*1*(2*a'*(S*Q1*S)*b)*(2*a'*(S*Q2*S)*a)*(2*a'*(S*Q3*S)*a)+4*holmquist1(S,Q3)*(2*a'*(S*Q1*S)*b)*(2*a'*(S*Q2*S)*a)*(a'*S*a)^2+8*holmquist1(S,Q3)*(2*a'*(S*Q1*S)*b)*(2*a'*(S*Q2*S)*a)*(a'*S*a)+4*holmquist1(S,Q2)*(2*a'*(S*Q1*S)*b)*(2*a'*(S*Q3*S)*a)*(a'*S*a)^2+8*holmquist1(S,Q2)*(2*a'*(S*Q1*S)*b)*(2*a'*(S*Q3*S)*a)*(a'*S*a)+4*holmquist1(S,Q1)*(2*a'*(S*Q3*S)*b)*(2*a'*(S*Q2*S)*a)*(a'*S*a)^2+8*holmquist1(S,Q1)*(2*a'*(S*Q3*S)*b)*(2*a'*(S*Q2*S)*a)*(a'*S*a)+4*holmquist1(S,Q1)*(2*a'*(S*Q2*S)*b)*(2*a'*(S*Q3*S)*a)*(a'*S*a)^2+8*holmquist1(S,Q1)*(2*a'*(S*Q2*S)*b)*(2*a'*(S*Q3*S)*a)*(a'*S*a)+4*holmquist1(S,Q3)*(2*a'*(S*Q2*S)*b)*(2*a'*(S*Q1*S)*a)*(a'*S*a)^2+8*holmquist1(S,Q3)*(2*a'*(S*Q2*S)*b)*(2*a'*(S*Q1*S)*a)*(a'*S*a)+4*holmquist1(S,Q2)*(2*a'*(S*Q3*S)*b)*(2*a'*(S*Q1*S)*a)*(a'*S*a)^2+8*holmquist1(S,Q2)*(2*a'*(S*Q3*S)*b)*(2*a'*(S*Q1*S)*a)*(a'*S*a)-6*holmquist1(S,Q1)*(a'*S*b)*(2*a'*(S*Q2*S)*a)*(2*a'*(S*Q3*S)*a)*(a'*S*a)-6*1*(2*a'*(S*Q3*S)*b)*(2*a'*(S*Q1*S)*a)*(2*a'*(S*Q2*S)*a)*(a'*S*a)-6*1*(2*a'*(S*Q2*S)*b)*(2*a'*(S*Q1*S)*a)*(2*a'*(S*Q3*S)*a)*(a'*S*a)-6*holmquist1(S,Q3)*(a'*S*b)*(2*a'*(S*Q1*S)*a)*(2*a'*(S*Q2*S)*a)*(a'*S*a)-6*holmquist1(S,Q2)*(a'*S*b)*(2*a'*(S*Q1*S)*a)*(2*a'*(S*Q3*S)*a)*(a'*S*a)-6*1*(2*a'*(S*Q1*S)*b)*(2*a'*(S*Q2*S)*a)*(2*a'*(S*Q3*S)*a)*(a'*S*a)+4*1*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*b)*(2*a'*(S*Q2*S)*a)+4*holmquist2(S,Q1,Q3)*(a'*S*b)*(2*a'*(S*Q2*S)*a)+4*1*(2*a'*(S*Q2*S)*b)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*a)-6*1*(a'*S*b)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*a)*(2*a'*(S*Q2*S)*a)-6*1*(a'*S*b)*(2*a'*(S*Q1*S)*a)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*a)-6*1*(a'*S*b)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*a)*(2*a'*(S*Q3*S)*a)+4*1*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*b)*(2*a'*(S*Q2*S)*a)*(a'*S*a)^2+4*1*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*b)*(2*a'*(S*Q3*S)*a)+4*holmquist1(S,Q1)*(a'*S*b)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*a)+4*holmquist2(S,Q1,Q2)*(a'*S*b)*(2*a'*(S*Q3*S)*a)+4*1*(2*a'*(S*Q1*S)*b)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*a)+4*holmquist1(S,Q3)*(a'*S*b)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*a)+4*1*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*b)*(2*a'*(S*Q1*S)*a)+4*holmquist1(S,Q2)*(a'*S*b)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*a)+4*holmquist2(S,Q2,Q3)*(a'*S*b)*(2*a'*(S*Q1*S)*a)+4*1*(a'*S*b)*(8*a'*(S*Q1*S*Q2*S*Q3*S+S*Q1*S*Q3*S*Q2*S+S*Q2*S*Q1*S*Q3*S+S*Q2*S*Q3*S*Q1*S+S*Q3*S*Q1*S*Q2*S+S*Q3*S*Q2*S*Q1*S)*a)+4*1*(2*a'*(S*Q3*S)*b)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*a)-24*holmquist3(S,Q1,Q2,Q3)*(a'*S*b)*(a'*S*a)^2-8*holmquist3(S,Q1,Q2,Q3)*(a'*S*b)*(a'*S*a)^3-24*holmquist3(S,Q1,Q2,Q3)*(a'*S*b)*(a'*S*a)-24*holmquist2(S,Q2,Q3)*(2*a'*(S*Q1*S)*b)*(a'*S*a)^2-8*holmquist2(S,Q2,Q3)*(2*a'*(S*Q1*S)*b)*(a'*S*a)^3-24*holmquist2(S,Q2,Q3)*(2*a'*(S*Q1*S)*b)*(a'*S*a)-24*holmquist1(S,Q2)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*b)*(a'*S*a)^2-8*holmquist1(S,Q2)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*b)*(a'*S*a)^3-24*holmquist1(S,Q2)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*b)*(a'*S*a)-24*holmquist1(S,Q3)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*b)*(a'*S*a)^2-8*holmquist1(S,Q3)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*b)*(a'*S*a)^3-24*holmquist1(S,Q3)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*b)*(a'*S*a)-24*holmquist1(S,Q1)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*b)*(a'*S*a)^2-8*holmquist1(S,Q1)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*b)*(a'*S*a)^3-24*holmquist1(S,Q1)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*b)*(a'*S*a)-8*holmquist1(S,Q3)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*b)-8*holmquist2(S,Q2,Q3)*(2*a'*(S*Q1*S)*b)-8*holmquist1(S,Q2)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*b)-8*holmquist2(S,Q1,Q3)*(2*a'*(S*Q2*S)*b)-8*1*(8*a'*(S*Q1*S*Q2*S*Q3*S+S*Q1*S*Q3*S*Q2*S+S*Q2*S*Q1*S*Q3*S+S*Q2*S*Q3*S*Q1*S+S*Q3*S*Q1*S*Q2*S+S*Q3*S*Q2*S*Q1*S)*b)-8*holmquist2(S,Q1,Q2)*(2*a'*(S*Q3*S)*b)-8*holmquist1(S,Q1)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*b)-8*holmquist3(S,Q1,Q2,Q3)*(a'*S*b)-24*holmquist2(S,Q1,Q2)*(2*a'*(S*Q3*S)*b)*(a'*S*a)^2-8*holmquist2(S,Q1,Q2)*(2*a'*(S*Q3*S)*b)*(a'*S*a)^3-24*holmquist2(S,Q1,Q2)*(2*a'*(S*Q3*S)*b)*(a'*S*a)-24*1*(8*a'*(S*Q1*S*Q2*S*Q3*S+S*Q1*S*Q3*S*Q2*S+S*Q2*S*Q1*S*Q3*S+S*Q2*S*Q3*S*Q1*S+S*Q3*S*Q1*S*Q2*S+S*Q3*S*Q2*S*Q1*S)*b)*(a'*S*a)^2-8*1*(8*a'*(S*Q1*S*Q2*S*Q3*S+S*Q1*S*Q3*S*Q2*S+S*Q2*S*Q1*S*Q3*S+S*Q2*S*Q3*S*Q1*S+S*Q3*S*Q1*S*Q2*S+S*Q3*S*Q2*S*Q1*S)*b)*(a'*S*a)^3-24*1*(8*a'*(S*Q1*S*Q2*S*Q3*S+S*Q1*S*Q3*S*Q2*S+S*Q2*S*Q1*S*Q3*S+S*Q2*S*Q3*S*Q1*S+S*Q3*S*Q1*S*Q2*S+S*Q3*S*Q2*S*Q1*S)*b)*(a'*S*a)-24*holmquist2(S,Q1,Q3)*(2*a'*(S*Q2*S)*b)*(a'*S*a)^2-8*holmquist2(S,Q1,Q3)*(2*a'*(S*Q2*S)*b)*(a'*S*a)^3-24*holmquist2(S,Q1,Q3)*(2*a'*(S*Q2*S)*b)*(a'*S*a)+8*1*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*b)*(2*a'*(S*Q2*S)*a)*(a'*S*a)+4*1*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*b)*(2*a'*(S*Q3*S)*a)*(a'*S*a)^2+8*1*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*b)*(2*a'*(S*Q3*S)*a)*(a'*S*a)+4*holmquist1(S,Q1)*(a'*S*b)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*a)*(a'*S*a)^2+8*holmquist1(S,Q1)*(a'*S*b)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*a)*(a'*S*a)+4*holmquist2(S,Q1,Q3)*(a'*S*b)*(2*a'*(S*Q2*S)*a)*(a'*S*a)^2+8*holmquist2(S,Q1,Q3)*(a'*S*b)*(2*a'*(S*Q2*S)*a)*(a'*S*a)+4*holmquist2(S,Q1,Q2)*(a'*S*b)*(2*a'*(S*Q3*S)*a)*(a'*S*a)^2+8*holmquist2(S,Q1,Q2)*(a'*S*b)*(2*a'*(S*Q3*S)*a)*(a'*S*a)+4*1*(2*a'*(S*Q1*S)*b)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*a)*(a'*S*a)^2+8*1*(2*a'*(S*Q1*S)*b)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*a)*(a'*S*a)+4*holmquist1(S,Q3)*(a'*S*b)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*a)*(a'*S*a)^2+8*holmquist1(S,Q3)*(a'*S*b)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*a)*(a'*S*a)+4*1*(2*a'*(S*Q2*S)*b)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*a)*(a'*S*a)^2+8*1*(2*a'*(S*Q2*S)*b)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*a)*(a'*S*a)+4*1*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*b)*(2*a'*(S*Q1*S)*a)*(a'*S*a)^2+8*1*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*b)*(2*a'*(S*Q1*S)*a)*(a'*S*a)+4*holmquist1(S,Q2)*(a'*S*b)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*a)*(a'*S*a)^2+8*holmquist1(S,Q2)*(a'*S*b)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*a)*(a'*S*a)+4*holmquist2(S,Q2,Q3)*(a'*S*b)*(2*a'*(S*Q1*S)*a)*(a'*S*a)^2+8*holmquist2(S,Q2,Q3)*(a'*S*b)*(2*a'*(S*Q1*S)*a)*(a'*S*a)+4*1*(a'*S*b)*(8*a'*(S*Q1*S*Q2*S*Q3*S+S*Q1*S*Q3*S*Q2*S+S*Q2*S*Q1*S*Q3*S+S*Q2*S*Q3*S*Q1*S+S*Q3*S*Q1*S*Q2*S+S*Q3*S*Q2*S*Q1*S)*a)*(a'*S*a)^2+8*1*(a'*S*b)*(8*a'*(S*Q1*S*Q2*S*Q3*S+S*Q1*S*Q3*S*Q2*S+S*Q2*S*Q1*S*Q3*S+S*Q2*S*Q3*S*Q1*S+S*Q3*S*Q1*S*Q2*S+S*Q3*S*Q2*S*Q1*S)*a)*(a'*S*a)+4*1*(2*a'*(S*Q3*S)*b)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*a)*(a'*S*a)^2+8*1*(2*a'*(S*Q3*S)*b)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*a)*(a'*S*a)-6*1*(a'*S*b)*(4*a'*(S*Q1*S*Q3*S+S*Q3*S*Q1*S)*a)*(2*a'*(S*Q2*S)*a)*(a'*S*a)-6*1*(a'*S*b)*(2*a'*(S*Q1*S)*a)*(4*a'*(S*Q2*S*Q3*S+S*Q3*S*Q2*S)*a)*(a'*S*a)-6*1*(a'*S*b)*(4*a'*(S*Q1*S*Q2*S+S*Q2*S*Q1*S)*a)*(2*a'*(S*Q3*S)*a)*(a'*S*a))/(1+(a'*S*a))^(7/2);
