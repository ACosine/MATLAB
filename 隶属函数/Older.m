function x=Older(u)
%u=[0:1:150];   %����u��ȡֵ��Χ,Ҫע��u��һ��һά����
n=length(u);   %��������ĳ��ȣ�ȷ��ѭ���Ĵ���
for k=[50:60];   %һ��������
    for i=1:n
       if u(i)<=k  %��iΪ�±�ȡ������u�е������бȽ�
            uu(i)=0;
        else
            uu(i)=1/(1+((u(i)-k)/5)^(-2));%��iΪ�±�ȡ������u�е����������ּ���
        end
      x=uu;
    end
    plot(u,x);
    hold on
end
end