function DisplayExcludedTime(mode,col)
global hmr

tInc = hmr.dataTree.currElem.GetTincAuto();
t    = hmr.dataTree.currElem.GetTime();

if isempty(tInc)
    return;
end

if ~exist('mode','var') || isempty(mode)
    mode = 'auto';
end
if strcmp(mode,'manual') || ~exist('col')
    col = setColor(mode);
end

% Patch in some versions of matlab messes up the renreder, that is it changes the 
% renderer property. Therefore we save current renderer before patch to
% restore it to what it was to pre-patch time. 
renderer = get(gcf, 'renderer');

hold on
p = timeExcludeRanges(tInc,t);
yy = ylim();
for ii=1:size(p,1)
    h = patch([p(ii,1) p(ii,2) p(ii,2) p(ii,1) p(ii,1)], [yy(1) yy(1) yy(2) yy(2) yy(1)], col, ...
             'facealpha',0.3, 'edgecolor','none' );
end
hold off

% Restore previous renderer
set(gcf, 'renderer', renderer);



% -------------------------------------------------------------------------
function col = setColor(mode)

% Set patches color based on figure renderer

if strcmp(get(gcf,'renderer'),'zbuffer')
    if strcmp(mode,'auto')
        col=[1.0 0.5 0.5];
    else
        col=[1.0 0.5 1.0];
    end
else
    if strcmp(mode,'auto')
        col=[1.0 0.0 0.0];
    else
        col=[1.0 0.0 1.0];
    end
end
