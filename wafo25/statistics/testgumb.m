function p = testgumb(x,a)
%TESTGUMB Tests if shape parameter in a GEV is equal to zero
%
% CALL:  p = testgumb(x,alpha)
%
%        p = p-value in the test
%        x = the sample
%    alpha = significance level (default alpha=0.05)
%  
% The Gumbel distribution (see prbgumb) is a GEV distribution (see 
% prbgev) with shape parameter k = 0. To test if a given set of data 
% is generated by a Gumbel distribution, a test of the hypothesis k = 0 
% may be based on the PWM  estimator of k. On the null hypothesis k = 0, 
% the estimator is asymptotically distributed as N(0,0.5633/n) (where  n
% is the number of observations). 
%
% Example:
%   x1 = rndgev(0.02,2,7.5,50,1);
%   testgumb(x1);
%   x2 = rndgev(0.20,2,7.5,50,1);
%   testgumb(x2);
%
% See also  cdfgumb, cdfgev

%
%     This program is free software; you can redistribute it and/or modify
%     it under the terms of the GNU Lesser General Public License as published by
%     the Free Software Foundation; either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU Lesser General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.


% References 
%  Hosking, J.R.M, Wallis, J.R. and Wood E.F. (1985)
%  Estimation of the generalized extreme-value distribution by the
%  method of probability-weighted moments
%  Technometrics (27), pp. 251-261

% Tested on; Matlab 5.3
% History: 
% Revised by jr 31.08.1999
% revised ms 15.06.2000
% - updated header info
% - changed name to testgumb (from gumbtest)
% - added optional significance level
% - added w* to used WAFO-files

if nargin < 2
  a=.05;
end

phat = fitgev(x,'pwm');
r = phat.params;

z = r(1)*(length(x)/0.5633)^0.5;
disp(' ')
disp(' Null hypothesis: Parent distribution is GEV with k = 0.')
disp(' ')
p = 1-cdfnorm(abs(z),0,1);
if (p>a), 
  disp(' The null hypothesis cannot be rejected.')
else 
  disp([' Reject the null hypothesis with p-value p = ',num2str(p)])
  if z > 0 
    disp(' in favour of the alternative hypothesis: k > 0.')
  else 
    disp(' in favour of the alternative hypothesis: k < 0.')
  end
end
disp(' ')
