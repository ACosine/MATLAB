function BMP_AVI(framesPath,videoName,quality,fps,startFrame,endFrame)
%BMP_AVI����������
%framesPath��ͼ����������·����
%videoName����ʾ��Ҫ��������Ƶ�ļ�������
%quality��������Ƶ������ 0-100
%fps��֡��
%startFrame,endFrame����ʾ����һ֡��ʼ����һ֡����
if(exist('videoName','file'))
    delete videoName.avi
end
%������Ƶ�Ĳ����趨
aviobj=VideoWriter(videoName);  %����һ��avi��Ƶ�ļ����󣬿�ʼʱ��Ϊ��
aviobj.Quality=quality; %������Ƶ����
aviobj.FrameRate=fps;  %������Ƶ֡��
%����ͼ��
for i=startFrame:endFrame
    fileName=sprintf('%d',i);    %sprintf������ͼ�����ֵ�����ת��Ϊ�ַ���ʽ
    frames=imread([framesPath,fileName,'.bmp']);%�����ļ�·����ȡͼ��
    open(aviobj); %�����úø�ʽ�Ŀհ�.avi�ļ�
    writeVideo(aviobj,uint8(frames));%�����Ƶ
end
close(aviobj); % �ر���Ƶ
end