clear

% Input Variables

area = [613;70;400;530;120;1100;100;520;100;480;130;500;114;67;75;800;180;500;150;300;100;150]
prices = [5500000;175000;920000;12500000;369000;12000000;250000;3000000;679000;2500000;200000;2500000;499800;470000;200000;1599000;550000;3300000;380000;895000;380000;840000]

% Plot Area - DataSet
figure(1)
hPlotData = plot(area,prices,'rx');
title 'Prices vs Area';
xlabel 'Area (m²)';
ylabel 'Prices (R$)';
grid on;

% Plot Area - Cost Function
costFuction = 0;

for theta = -10000:0.5:10000    
    for i = 1:22
        sum = (theta*area(i)) - prices(i);
        sum = sum*sum;
        costFunction = costFuction + sum;
    end
    costFuction = (1/(2*22))*costFunction;
    figure(2)
    plot(theta,costFuction,'co');
    title 'Prices vs Area'; 
    xlabel 'Theta';
    ylabel 'J(theta)';
    grid on;
    hold on;
end