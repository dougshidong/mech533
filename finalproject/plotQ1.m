al = 0:0.1:22.5;
E  = abs(1 - 2 ./ (1 + cosd(al))) * 100;

plot(al, E)
title('Error of 1D Approach');
ylabel('Error [%]')
xlabel('alpha [degrees]')

set(gcf, 'PaperPosition', [0 0 5 5]); %Position plot at left hand corner with width 5 and height 5.
set(gcf, 'PaperSize', [5 5]); %Set the paper to have width 5 and height 5.
saveas(gcf, 'plotq1', 'pdf') %Save figure