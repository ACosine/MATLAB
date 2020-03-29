
%%function ret=T1(n,x0,fun);
	syms x;
	f(1)=subs(fun,x0);
	ret=f(1);
	fplot(f(1),[-10,10]);
	axis([-10 10 -10 10]);
	hold on;
	if n>0
		for i=1:1:n
		    f(i+1)= subs(diff(fun,i),x0)*(x-x0)^(i)/factorial(i);
		    ret=ret+f(i+1);
		    fplot(f(i+1),[-10,10]);
		end
	end
%%end
%%  利用n阶泰勒多项式展开来估算函数f(x)=e^x在指定点x处的近似值。要求绝对误差在最大阶数MAXN以内达到给定精度EPS。
%%function taylorcal()
eps=0.00001;
MAXN=20;
x=input('存储输入的浮点数/向量');
f1=zeros(1,length(x));
for j=1:length(x)
     xzs=1;
     xjc=1;
     xsum=1;
     accexp=exp(x(j));
for i=1:MAXN
    xzs=xzs.*x(j);
    xjc=xjc.*i;
    xsum=xsum+xzs./xjc;
    if abs(xsum-accexp)<eps
        f1(j)=xsum;
        break
    end
    f1(j)=-1;
end
end
disp([x' f1'])
%%end