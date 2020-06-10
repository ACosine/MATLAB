function y=Normal_distribution(a,b)
%自定义正态分布的概率密度函数
x=-10:0.01:10;
y=1./(sqrt(2.*pi).*b.*exp((x-a).^2./(2.*b.^2)));
figure;
plot(x,y);
grid on   %添加格栅
legend('标准正态分布');  %添加图例
hold on
end
%% 
% 
% x=-10:0.01:10;
% y=normpdf(x,0,1);%调用库里面的正态分布的概率密度函数
% figure;
% plot(x,y);
% grid;
% legend('标准正态分布');
