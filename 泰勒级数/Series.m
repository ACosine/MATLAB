%% Exercise 3: sinx��a=0����һ�ס����ס���ס��߽�̩��չ������
clc
clear
close all
c={'b','g','r','c'};     %�����̡��졢����
x=linspace(-pi,pi,200);  %����-pi��pi200������һά����
y=zeros(size(x));        %size(x)�������������������ɸ�ά������һά����

hold on
for n=0:3                 %ѭ���ĴΣ����λ���sinx��һ�ס����ס���ס��߽�̩��չ��ʽ
    y= y + ((-1)^n * x.^(2*n+1))/(factorial(2*n+1));
    plot(x,y,c{n+1})
end

plot(x,sin(x),'k')     %sinx��Ϊ�ο� ��ɫ
grid on                %��������
title('tayloy series Approximations of Various Orders')  %���⣺����̩��չ������
xlabel('x');  ylabel('y');                                %��ע��������
legend('Frist Order','Third Order','Fifth Order','seventh Order','Analytic')  %���ͼ����ע
axis tight

%% Exercise 4: sinx��a=0�����߽�̩��չ������x=pi/2ʱ���н������������1
x=pi/2;
y=0;
for i=0:3
     y= y + ((-1)^i * x.^(2*i+1))/(factorial(2*i+1));
end
format long      %��Чλ��16λ
y
%% Exercise 5: ����MATLAB��exp�������Ƚ�exp��1����exp(0.01)��ֵ
exp(1)

exp(0.01)

%% Exercise 6   ��x����0ʱ��sin(x)/x����1
clc
clear all
close all
syms x
y=sin(x);
y1 = taylor(y,x,0,'Order',2)  %�Ժ���y��0������2��̩��չ��
y2 = y1./x                    %֤��sin(x)��a=0����2��̩��չ����x�ǵȼ�����С
















































