clear

% Input Variables

area = [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22];
prices = [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22];

% Plot Area - DataSet
figure(1)
hPlotData = plot(area,prices,'rx:');
title 'Prices vs Area';
xlabel 'Area (m²)';
ylabel 'Prices (R$)';
grid on;

% Plot Area - Cost Function
costFuction = 0;

for theta = -10:0.5:10    
    for i = 1:22
        sum = (theta*area(i)) - prices(i);
        sum = sum*sum;
        costFunction = costFuction + sum;
    end
    costFuction = (1/(2*22))*costFunction;
    figure(2)
    plot(theta,costFuction,'gx');
    title 'Prices vs Area'; 
    xlabel 'Theta';
    ylabel 'J(theta)';
    grid on;
    hold on;   

    figure(3)
    plot(theta*area,prices,'cx');
    plot(area,prices,'rx:');
    hold on
end
    
