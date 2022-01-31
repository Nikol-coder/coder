clc,clear
f=[-3 1 1]';
lb=zeros(3,1);
A=[1 -2 1;4 -1 -2];
b=[11,-3]';
aeq=[-2 0 1];
beq=1;
[x,y]=linprog(f,A,b,aeq,beq,lb);
x,y=-y