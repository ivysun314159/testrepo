##sample proportion (click through rate)

muA=x
muB=y
kappa=1
sd=z
alpha=0.05
beta=0.2

nB=(1+1/kappa)*(sd*(qnorm(1-alpha/2)+qnorm(1-beta))/(muA-muB))^2
nB=ceiling(nB)

Sample_size=kappa*nB+nB

Z=(muA-muB)/(sd*sqrt((1+1/kappa)/nB))

Power=pnorm(Z-qnorm(1-alpha/2))+pnorm(-Z-qnorm(1-alpha/2))

rbind(nB,Sample_size,Power,Z)

##sample mean(revenue)
  
power.prop.test(p1=x, p2=x*mde, power=0.8, sig.level=0.2)




