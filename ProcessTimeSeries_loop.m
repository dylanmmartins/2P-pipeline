
folderlist = dir;

for i = 2:length(folderlist)

    f = folderlist(i);

    if ((f.name==".") || (f.name=="..") || contains(f.name, "SingleImage") || contains(f.name, "OrientationTuning") || contains(f.name, "PrismSpont"))
        continue
    end

    cd(f.folder);

    f1 = split(pwd, '/');
    full_fname = strcat(string(f1), "\", f.name, "\ZoomVideo1-027.tif");

    skip = 0;
    tests = [".fig",".env",".xml",".mat","Reference.tif"];
    for test_i = 1:length(tests)
        test = tests(test_i);
        if contains(full_fname, test)
            skip = 1;
        end
    end

    if skip == 1
        continue
    end

    display(full_fname)

    A_ProcessTimeSeries(full_fname, 1, 'No', 0);

    cd ..
    
end