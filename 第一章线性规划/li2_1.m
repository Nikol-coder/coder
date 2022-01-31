clc,clear
a=0;
hold on
while a<0.05
    c=[-0.05,-0.27,-0.19,-0.185,-0.185];
    A=[zeros(4,1),diag([0.025,0.015,0.055,0.026])];%4��5��
    b=a*ones(4,1);
    Aeq=[1,1.01,1.02,1.045,1.065];
    beq=1;
    lb=zeros(5,1);
    [x,Q]=linprog(c,A,b,Aeq,beq,lb)
    Q=-Q;
    plot(a,Q,'*k');
    a=a+0.001;
end
xlabel('a'),ylabel('Q')