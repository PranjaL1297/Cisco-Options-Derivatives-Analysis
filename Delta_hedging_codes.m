clear;
K = 52; % strike price
TC = 0.0001; % transaction costs of 10 bps
dt = 1/365;
% Time to expiry on each date to expiry
timeToExp =[24;23;22;21;18;17;16;15;14;11;10;9;8;7;4;3;2]/365;
%Index on each date to expiry

St = [52.130001;52.189999;52.75;53.009998;53.290001;...
    53.130001;53;52;52.59;52.23;53.169998;53.279999;...
    48.040001;47.759998;48.27;47.799999;48.080002]



% St(6:end) = 1503; 
subplot(2,1,1),plot(St); hold all; plot(0*St+K);title('CSCO Spot Level');
axis([-inf,inf,-inf,inf]); grid on;
r = 0.0556; % risk-free rate
y = 0.029925; % dividend-yield
Ca = 1.56; % Call price
IV = 0.2621; % implied volatility (either 27.28% for implied volatility or 26.21% for forecasted volatility)
N = numel(St)-1;
deltah = zeros(N-1,1);
fprintf('------------------------------------------------------------------\n');
fprintf('Delta Hedging \n');
fprintf('------------------------------------------------------------------\n');

% Call premium

CallPremium = Ca * (1-TC);

BankBalance = CallPremium;
stockCosts=0;
% Get the vector of delta positions
for t =1:N
    S0 = St(t);
    t2e = timeToExp(t);
    [ cprice, deltah(t), ~ ] = BlackScholesCallPrice( K, t2e, S0, r, y, IV ); 
    if t>1
        oldStockPosition = deltah(t-1);
    else
        oldStockPosition = 0;
    end
    amtBuy = (deltah(t)-oldStockPosition)*St(t);
    stockCosts = amtBuy +abs(amtBuy)*TC;
    BankBalance = BankBalance*exp(r*dt) - stockCosts;

    fprintf(' t= %i; delta = %.10f; bought $ %.10f of the index; Bank $ %.10f \n', t,deltah(t),amtBuy,BankBalance);
   
end

subplot(2,1,2),plot(deltah(1:end));
axis([-inf,inf,-inf,inf]); grid on;
title('Delta Position');
fprintf('------------------------------------------------------------------\n');

CallPayoff = max(0,St(end)-K);
profit = deltah(end)*St(end) +BankBalance - CallPayoff;

fprintf('Total Hedge Profit: $ %.10f \n', profit);
fprintf('------------------------------------------------------------------\n');




