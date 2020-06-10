function z=Younger(u)
%u=[0:1:150];   %论域u的取值范围,要注意u是一个一维数组
n=length(u);   %计算论域的长度，确定循环的次数
for k=[25:35]; %一簇年轻人
    for i=1:n
       if u(i)<=k  %以i为下标取出数组u中的数进行比较
            uu(i)=1;
        else
            uu(i)=1/(1+((u(i)-k)/5)^2);%以i为下标取出数组u中的数进行数字计算
        end
      z=uu;
    end
    plot(u,z);
    hold on
end
end

