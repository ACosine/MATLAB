%% Exercise 3: sinx在a=0处的一阶、三阶、五阶、七阶泰勒展开级数
clc
clear
close all
c={'b','g','r','c'};     %蓝、绿、红、蓝绿
x=linspace(-pi,pi,200);  %生成-pi到pi200个点距的一维向量
y=zeros(size(x));        %size(x)计算行数与列数，生成该维数的零一维向量

hold on
for n=0:3                 %循环四次，依次画出sinx的一阶、三阶、五阶、七阶泰勒展开式
    y= y + ((-1)^n * x.^(2*n+1))/(factorial(2*n+1));
    plot(x,y,c{n+1})
end

plot(x,sin(x),'k')     %sinx作为参考 黑色
grid on                %打开网格线
title('tayloy series Approximations of Various Orders')  %标题：各阶泰勒展开级数
xlabel('x');  ylabel('y');                                %标注横纵坐标
legend('Frist Order','Third Order','Fifth Order','seventh Order','Analytic')  %添加图例标注
axis tight

%% Exercise 4: sinx在a=0处的七阶泰勒展开，当x=pi/2时运行结果无限趋近于1
x=pi/2;
y=0;
for i=0:3
     y= y + ((-1)^i * x.^(2*i+1))/(factorial(2*i+1));
end
format long      %有效位数16位
y
%% Exercise 5: 利用MATLAB中exp函数，比较exp（1）和exp(0.01)的值
exp(1)

exp(0.01)

%% Exercise 6   当x趋于0时，sin(x)/x等于1
clc
clear all
close all
syms x
y=sin(x);
y1 = taylor(y,x,0,'Order',2)  %对函数y在0处进行2阶泰勒展开
y2 = y1./x                    %证明sin(x)在a=0处的2阶泰勒展开与x是等价无穷小
















































