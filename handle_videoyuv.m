clear;close all;
fid=fopen('D:\�㱨ѧϰ\��Ŀ\����ʶ�����ݿ�\YUV������Ƶ\foreman_qcif_300\foreman_qcif.yuv','r');
%cur_file = cd;
pic_seq='\ת��Ϊ֡\';
picfile=['D:\�㱨ѧϰ\��Ŀ\����ʶ�����ݿ�\YUV������Ƶ\foreman_qcif_300',pic_seq];
row = 176;col = 144;
ftfrm=1;tlfrm=300;
Y=zeros(row,col);
for frame=ftfrm:tlfrm
    Y=fread(fid,[row,col],'uint8');
    imwrite(Y./255,[picfile,num2str(frame),'.bmp'],'bmp');
    fread(fid,[row,col/2],'uint8');    %��֧��4:2:0��ʽ�ģ�����֧��������ʽ����Ҫ�޸Ĵ˴�
end