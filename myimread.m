function [ Ans ] = myimread( file_name )
fid = fopen(file_name,'r');
image_type = textscan(fid,'%s',1);
image_type = image_type{1}

width = textscan(fid,'%d %d',1);
height = width{2}
width = width{1}
unknow = textscan(fid,'%d\n',1);
tmp = fread(fid,width*height*3,'*uint8');
for ii = 1 : height
    for jj = 1 : width
        for kk = 1:3
            Ans(ii,jj,kk) = tmp((ii-1)*width*3 + (jj-1)*3 + kk);
        end
    end
end
%Ans = reshape(Ans',height,width,3);
class(Ans)
end

