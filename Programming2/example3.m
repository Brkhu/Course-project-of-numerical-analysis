p = @(x) zeros(size(x));
q = @(x) -1e6*x;
f = @(x) zeros(size(x));
zeta = [1,0;1,0];
Gamma = [1;1];
P = [-1,1];
K = 14;
Tol = 1e-10;
S = mainlinearsolver(p,q,f,zeta,Gamma,K,P,Tol);
plot(reshape(S{1},[],1),reshape(S{3},[],1),'r.-')

