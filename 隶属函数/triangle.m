%���ú���trimf������������������
x=0:0.1:10;
%���ÿ������trimf����2��ʼ4����8����
plot(x,trimf(x,[2 4 8]),'r-','LineWidth',3);
hold on  % 1��ɫʵ��

plot(x,trimf(x,[1 3 5]),'b--','LineWidth',3);
hold on   % 2��ɫ����

plot(x,trimf(x,[0 5 10]),'g:','LineWidth',3);
hold on   % 3��ɫ����

legend('��������������1','��������������2','��������������3'); %���ͼ��
grid on  %���դ��
