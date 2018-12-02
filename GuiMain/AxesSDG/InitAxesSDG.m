function axesSDG = InitAxesSDG(handles)

axesSDG = struct(...
                 'handles', struct(...
                                   'axes', handles.axesSDG ...
                                  ), ...
                 'iCh', [], ...
                 'iSrcDet', [], ...
                 'linecolor', [...
                               0.2  0.6  0.1;
                               1.0  0.5  0.0;
                               1.0  0.0  1.0;
                               0.5  0.5  1.0;
                               0.0  1.0  1.0;
                               1.0  0.0  0.0;
                               0.2  0.3  0.1;
                               0.8  0.6  0.6;
                               0.5  1.0  0.5;
                               0.5  1.0  1.0;
                               0.0  0.0  0.0;
                               0.2  0.2  0.2;
                               0.4  0.4  0.4;
                               0.6  0.6  0.6;
                               0.8  0.8  0.8 ...
                              ] ...
               );


% additional_colors = rand_seeded(345,10,3);
% axesSDG.linecolor(end+1:end+size(additional_colors,1),:) = additional_colors;

