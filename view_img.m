%load("probe-orientation-straight.mat");
frame = 1; % can range from 1-200 since that was what we recorded

unpack = cell2mat(ImgData);
squeezed = squeeze(unpack);
img = squeezed(:,:,frame);
data = img/max(max(img));
dbdata = db(data);
imagesc(dbdata, [-50,0]);
colormap(gray(256));