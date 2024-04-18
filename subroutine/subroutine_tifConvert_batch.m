folder_list = {'AlternatingDriftingGratingsRandom-002',...
    'AlternatingDriftingGratingsOrdered-003', 'AlternatingDriftingGratingsAOnly-004',...
    'AlternatingDriftingGratingsBOnly-005', 'SpatialMappingDriftingBars-006'};

for i = 1:length(folder_list)
    cd(folder_list{i})
    f1 = split(folder_list{i}, '\\');
    firstfile = strcat(string(f1(4)), '_', string(f1(5)), '_Ch2_000001.ome.tif');
    subroutine_tifConvert(char(firstfile));
    cd ..
end


    
    