%利用函数trimf建立三角形隶属函数
x=0:0.1:10;
%调用库里面的trimf函数2开始4顶点8结束
plot(x,trimf(x,[2 4 8]),'r-','LineWidth',3);
hold on  % 1红色实线

plot(x,trimf(x,[1 3 5]),'b--','LineWidth',3);
hold on   % 2蓝色虚线

plot(x,trimf(x,[0 5 10]),'g:','LineWidth',3);
hold on   % 3绿色点线

legend('三角形隶属函数1','三角形隶属函数2','三角形隶属函数3'); %添加图例
grid on  %添加栅格
