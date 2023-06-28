p = @(x) 1./x;
q = @(x) (x.^2-100^2)./x.^2;
f = @(x) zeros(size(x));
zeta = [1,0;1,0];
Gamma = [0;1];
P = [0,600];
K = 14;
Tol = 1e-10;
S = mainlinearsolver(p,q,f,zeta,Gamma,K,P,Tol);
plot(reshape(S{1},[],1),reshape(S{3},[],1),'r.-')

