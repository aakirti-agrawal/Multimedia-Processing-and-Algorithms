img = imread('moon.jpg');
figure, imshow(img);
[a,b,t]=size(img);
tx = 200;
ty = 175;
img2 = zeros(a+2*tx,b+2*ty); %padding
img3 = zeros(a+2*tx,b+2*ty);

for r=tx+1:a+tx
    for c=ty+1:b+ty
        img2(r,c)=img1(r-tx,c-ty);
    end 
end
img4 = uint8(img2);
figure, imshow(img4);

%translation
for r=1:a
    for c=1:b
        img3(r+2*tx,c+2*ty) = img4(r+tx,c+ty);
    end
end

img5 = uint8(img3);
figure, imshow(img5);
        
