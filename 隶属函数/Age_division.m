u=[0:1:150];   %����u��ȡֵ��Χ,Ҫע��u��һ��һά����

subplot(1,2,1)
plot(u,Younger(u));
xlabel('����U');
ylabel('�����˵�������');
title('һ��������ģ������');
hold on    %����

subplot(1,2,2)
plot(u,Older(u));
xlabel('����U');
ylabel('�����˵�������');
title('һ�������˵�ģ������');
hold on