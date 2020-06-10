u=[0:1:150];   %论域u的取值范围,要注意u是一个一维数组

subplot(1,2,1)
plot(u,Younger(u));
xlabel('论域U');
ylabel('年轻人的隶属度');
title('一簇年轻人模糊集合');
hold on    %叠绘

subplot(1,2,2)
plot(u,Older(u));
xlabel('论域U');
ylabel('老年人的隶属度');
title('一簇老年人的模糊集合');
hold on