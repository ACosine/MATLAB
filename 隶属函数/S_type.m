%利用smf建立S型隶属函数
x=0:0.1:10;
y=smf(x,[1 9]);%调用库里面的smf函数1开始9结束
plot(x,y);
legend('S型隶属函数'); %添加图例
grid on  %添加栅格

