function x=Older(u)
%u=[0:1:150];   %论域u的取值范围,要注意u是一个一维数组
n=length(u);   %计算论域的长度，确定循环的次数
for k=[50:60];   %一簇老年人
    for i=1:n
       if u(i)<=k  %以i为下标取出数组u中的数进行比较
            uu(i)=0;
        else
            uu(i)=1/(1+((u(i)-k)/5)^(-2));%以i为下标取出数组u中的数进行数字计算
        end
      x=uu;
    end
    plot(u,x);
    hold on
end
end