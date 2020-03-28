function BMP_AVI(framesPath,videoName,quality,fps,startFrame,endFrame)
%BMP_AVI函数参数表：
%framesPath：图像序列所在路径，
%videoName：表示将要创建的视频文件的名字
%quality：生成视频的质量 0-100
%fps：帧率
%startFrame,endFrame：表示从哪一帧开始，哪一帧结束
if(exist('videoName','file'))
    delete videoName.avi
end
%生成视频的参数设定
aviobj=VideoWriter(videoName);  %创建一个avi视频文件对象，开始时其为空
aviobj.Quality=quality; %设置视频质量
aviobj.FrameRate=fps;  %设置视频帧率
%读入图像
for i=startFrame:endFrame
    fileName=sprintf('%d',i);    %sprintf函数将图像名字的数字转换为字符格式
    frames=imread([framesPath,fileName,'.bmp']);%根据文件路径读取图像
    open(aviobj); %打开设置好格式的空白.avi文件
    writeVideo(aviobj,uint8(frames));%输出视频
end
close(aviobj); % 关闭视频
end