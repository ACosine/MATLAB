
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
%%  ����n��̩�ն���ʽչ�������㺯��f(x)=e^x��ָ����x���Ľ���ֵ��Ҫ����������������MAXN���ڴﵽ��������EPS��
%%function taylorcal()
eps=0.00001;
MAXN=20;
x=input('�洢����ĸ�����/����');
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