% Input
c = 1.0;
casee = 2;
center = [0, 0];
pass = [2, 0];

a = norm(center - pass);

t = 0:0.1:2*pi;

zeta = a * (cos(t) + 1i*sin(t)) + center(1) + center(2)*1i;

z = zeta + c ^ 2 * ones(size(zeta)) ./ zeta;

tit = sprintf(['Case %d: Center = (%2.1f,%2.1f) ', ...
              'Pass Through (%2.1f,%2.1f)'], ...
              casee, center(1), center(2), pass(1), pass(2));

close all
figure
hold on
plot(real(zeta),imag(zeta), '-b')
plot(real(z),imag(z), '-r')
plot(center(1),center(2), 'ok')
plot([-c, c], [0, 0], 'og')
xlabel('\Re'); ylabel('\Im')
legend('\zeta-plane','z-plane')
title(tit)

axis equal
axis([-2.2 2.2 -1.4 1.6]*1.7)
grid on

filen = sprintf('case%d',casee);
set(gcf, 'PaperPosition', [0 0 4 3]);
set(gcf, 'PaperSize', [4 3]); %Set the paper to have width 5 and height 5.
saveas(gcf, filen , 'pdf') %Save figure