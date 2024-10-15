function subroutine_downsample_ref_tif()

disp("Select single-page TIF file.")
[imname, impath] = uigetfile('*.tif');

readpath = string(impath)+string(imname);
spltstr = strsplit(readpath, '.');
savepath = spltstr(1);
savepath = savepath+"_ds.tif";

im = imread(readpath);

im_ds = imresize(im, 0.5);

imwrite(im_ds, savepath);

end