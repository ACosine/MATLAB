function AVI_BMP(Path)
mov = VideoReader(Path);      %��ȡ��Ƶ
number = mov.NumberOfFrames;  %��ȡ֡��
for i = 1 : number
    frame = read(mov,i);   %ÿ֡��ȡһ��
    name=sprintf('%d',i);      %%sprintf������ͼ�����ֵ�����ת��Ϊ�ַ���ʽ
    imwrite(frame,strcat(name,'.bmp'),'bmp'); %��ͼƬ��bmp��ʽ����
end
end

