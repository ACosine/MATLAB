function z=Younger(u)
%u=[0:1:150];   %����u��ȡֵ��Χ,Ҫע��u��һ��һά����
n=length(u);   %��������ĳ��ȣ�ȷ��ѭ���Ĵ���
for k=[25:35]; %һ��������
    for i=1:n
       if u(i)<=k  %��iΪ�±�ȡ������u�е������бȽ�
            uu(i)=1;
        else
            uu(i)=1/(1+((u(i)-k)/5)^2);%��iΪ�±�ȡ������u�е����������ּ���
        end
      z=uu;
    end
    plot(u,z);
    hold on
end
end

