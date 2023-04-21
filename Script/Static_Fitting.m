function [fitresult] = Static_Fitting(Current,Voltage)
[xData, yData] = prepareCurveData( Current,Voltage);
ft = fittype( {'1', '(x)'}, 'independent', 'x', 'dependent', 'y', 'coefficients', {'Voc', 'R0'} );
[fitresult] = fit( xData, yData, ft );
end