load('sims_data.mat');
function acorr=acf(y,lags);
acorr=zeros(lags,1);
for i=1:lags
y0=trimr(y,i,0);
x=[ones(t-i,1) trimr(y,0,i)];
b=inv(x'*x)*x'*y0;
acorr(i)=b(2)
end
end