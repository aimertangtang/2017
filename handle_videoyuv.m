clear;close all;
fid=fopen('D:\汇报学习\项目\人脸识别数据库\YUV序列视频\foreman_qcif_300\foreman_qcif.yuv','r');
%cur_file = cd;
pic_seq='\转换为帧\';
picfile=['D:\汇报学习\项目\人脸识别数据库\YUV序列视频\foreman_qcif_300',pic_seq];
row = 176;col = 144;
ftfrm=1;tlfrm=300;
Y=zeros(row,col);
for frame=ftfrm:tlfrm
    Y=fread(fid,[row,col],'uint8');
    imwrite(Y./255,[picfile,num2str(frame),'.bmp'],'bmp');
    fread(fid,[row,col/2],'uint8');    %仅支持4:2:0格式的，如需支持其他格式，需要修改此处
end