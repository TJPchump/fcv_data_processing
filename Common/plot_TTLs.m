function h = plot_TTLs(TTLs, ts)
%function h = plot_TTLs(TTLs)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   plot_TTLs
%
%   Takes TTL data read from tarheel file using TTLsRead and plots.
%   
%   inputs:    
%           TTLs - data read from tarheel .txt file using TTLsRead
%   output: 
%           h = handle to figure
%
%
%   future feature:
%                   extra parameter to describe TTL channels
%                   customise title?
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Modify TTLs to allow for separate lines
TTLs_plot = TTLs * 0.5;
for i = 1:size(TTLs,2)
    TTLs_plot(:,i) = TTLs_plot(:,i) + i;
end

plot(ts,TTLs_plot)
title('TTLs');xlim([ts(1),max(ts)]);xlabel('Times(s)');    
