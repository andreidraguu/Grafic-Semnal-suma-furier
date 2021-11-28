%ex 1 
clc;
clear all;
close all;
x=linspace(-10,10,2000);
f=0;
k=0; 


A=[-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10];
B=[-10,-9,-8,-7,-6,-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10];
figure(1);
for n=1:1:17
  f=f-((20*(-1)^n/(n*pi))*sin((n*pi*x)/10)); 
  if(n==2||n==4||n==7||n==10)
  k=k+1
  error=mean((abs(f)-1).^2);
  subplot(2,2,k),line(A,B,'color','g','linewidth',2) 
  hold on;
  subplot(2,2,k),plot(x,f,'k','linewidth',2),
  title(['n=',num2str(n), 'Eroare=',num2str(error)]),grid
  endif
endfor
