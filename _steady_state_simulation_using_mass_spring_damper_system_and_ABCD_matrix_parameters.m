m= 0.1
ks= 5
kd= 0.01


A=[0 1;
    -ks/m  -kd/m];
B=[0; 1/m]
C=[1 0]
D=0
ssModel= ss(A,B, C,D);
time= 0:0.01:10
U=30*sin(2*time)-10*cos(4*time)
figure(1)
plot(time, U)


figure(2)
lsim(ssModel, U, time)

[ys, ti]=lsim(ssModel, U, time)
figure(3)
plot(ti, ys)

X0=[2; -2]
figure(4)
lsim(ssModel, U, time, X0)

[y2, ti2]=lsim(ssModel, U, time, X0)
figure(5)
plot(ti2,y2)




