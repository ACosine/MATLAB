function AVI_BMP(Path)
mov = VideoReader(Path);      %读取视频
number = mov.NumberOfFrames;  %读取帧数
for i = 1 : number
    frame = read(mov,i);   %每帧读取一次
    name=sprintf('%d',i);      %%sprintf函数将图像名字的数字转换为字符格式
    imwrite(frame,strcat(name,'.bmp'),'bmp'); %将图片以bmp格式保存
end
end

