im = imread('Magnolia.png');


figure(1);

subplot(2,1,1)
imagesc(im);

hold off;


im = double(im);

gim = (im(:,:,1)+im(:,:,2)+im(:,:,3))/3;

Ix_filter=[-1,0,1]/2;
Iy_filter=[-1;0;1]/2;


Ix = imfilter(gim,Ix_filter);
Iy = imfilter(gim,Iy_filter);
gradient_magn = sqrt(Ix.^2 + Iy.^2);


subplot(2,1,2)
imagesc(gradient_magn)

colormap(hot)

