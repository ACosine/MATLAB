function y=Normal_distribution(a,b)
%�Զ�����̬�ֲ��ĸ����ܶȺ���
x=-10:0.01:10;
y=1./(sqrt(2.*pi).*b.*exp((x-a).^2./(2.*b.^2)));
figure;
plot(x,y);
grid on   %��Ӹ�դ
legend('��׼��̬�ֲ�');  %���ͼ��
hold on
end
%% 
% 
% x=-10:0.01:10;
% y=normpdf(x,0,1);%���ÿ��������̬�ֲ��ĸ����ܶȺ���
% figure;
% plot(x,y);
% grid;
% legend('��׼��̬�ֲ�');
