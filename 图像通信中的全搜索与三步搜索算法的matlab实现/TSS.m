clear all;

I1=imread('claire1.bmp');  %read the first frame
I2=imread('claire2.bmp');  %read the second frame

dm=7;
%��ͼ�����ߣ�ÿ���߶���dm��С
I1=double(I1);
I2=double(I2);

[rownum colnum] = size(I1);

II=zeros(rownum+2*dm,colnum+2*dm);
II(dm+1:dm+rownum,dm+1:dm+colnum)=I1;
for i=1:dm
    II(i,dm+1:dm+colnum)=II(dm+1,dm+1:dm+colnum);
    II(rownum+dm+i,dm+1:dm+colnum)=II(dm+rownum,dm+1:dm+colnum);
end
for j=1:dm
    II(1:rownum+2*dm,j)=II(1:rownum+2*dm,dm+1);
    II(1:rownum+2*dm,colnum+dm+j)=II(1:rownum+2*dm,dm+colnum);
end

%����������������㷨
 blocksize=16;
 rowblocks =rownum/blocksize;
 colblocks =colnum/blocksize;
 A=99999999999999999999;         %Ϊ���ҵ���С�ľ�����A�����趨һ���ܴ�ĳ�ֵ
 Eij=0;
 xrecord=ones(16,16);            %xrecord��yrecord���ڴ��ƥ���Ŀ�ţ����˶�ʸ��
 yrecord=ones(16,16);
 diff=zeros(256,256);           %���ͼ��Ĵ�СΪ256*256��diff���ڴ�����ز�ֵ
 tic
                for x=0:(rowblocks-1)         %x��ʾ���еڼ����ӿ�
                    row=x*blocksize;
                   for y=0:(colblocks-1)         %y��ʾ���еڼ����ӿ�
                       col=y*blocksize;

                                 for p1=-4:4:4              %��һ��
                                    for q1=-4:4:4     %��p��q����ʾ��x��y��Ӧ�ӿ���ǰһ֡����������λ��
                                        Eij=0;
                                        Eij=sum(sum((I2(row+1:row+blocksize,col+1:col+blocksize)-II(row+dm+p1+1:row+dm+p1+blocksize,col+dm+q1+1:col+dm+q1+blocksize)).^2))/(blocksize^2); 
                                        if Eij<A
                                                    A=Eij;
                                                    xrecord(x+1,y+1)=p1;
                                                    yrecord(x+1,y+1)=q1;
                                 
                                            end   
                                    end
                                 end
                                 
                                 p1=xrecord(x+1,y+1);
                                 q1=yrecord(x+1,y+1);
                                 for p2=p1-2:2:p1+2         %�ڶ���
                                     for q2=q1-2:2:q1+2
                                         if p2~=p1 | q2~=q1
                                         Eij=0;
                                         Eij=sum(sum((I2(row+1:row+blocksize,col+1:col+blocksize)-II(row+dm+p2+1:row+dm+p2+blocksize,col+dm+q2+1:col+dm+q2+blocksize)).^2))/(blocksize^2);
                                         if Eij<A
                                                    A=Eij;
                                                    xrecord(x+1,y+1)=p2;
                                                    yrecord(x+1,y+1)=q2;
                                            end 
                                         end
                                     end
                                 end
                                 
                                 p2=xrecord(x+1,y+1);
                                 q2=yrecord(x+1,y+1);
                                 for p3=p2-1:1:p2+1        %������
                                     for q3=q2-1:1:q2+1
                                         if p3~=p2 | q3~=q2 
                                         Eij=0;
                                         Eij=sum(sum((I2(row+1:row+blocksize,col+1:col+blocksize)-II(row+dm+p3+1:row+dm+p3+blocksize,col+dm+q3+1:col+dm+q3+blocksize)).^2))/(blocksize^2);
                                         if Eij<A
                                                    A=Eij;
                                                    xrecord(x+1,y+1)=p3;
                                                    yrecord(x+1,y+1)=q3;
                                            end 
                                         end
                                     end
                                 end
                                 A=999999999999999999;
                                 for mx=1:blocksize
                                     for ny=1:blocksize
                                         diff(row+mx,col+ny)=I2(row+mx,col+ny)-II(row+mx+dm+xrecord(x+1,y+1),col+ny+dm+yrecord(x+1,y+1));
                                     end
                                 end    
                       end
                end
toc
                
figure,imshow(I1,[]);
title('The first frame');
figure,imshow(I2,[]);
title('The second frame');
IIII=I2-I1;
figure,imshow(IIII,[]);
title('�в�֡ͼ��');  

figure;
quiver(1:16,1:16,yrecord,xrecord);
grid on;
title('�˶�ʸ��ͼ');


        
     
                   

                   

        