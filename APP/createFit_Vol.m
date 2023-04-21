function [Voltage_Fit] = createFit_Vol(Voltage,Time,method)
    [xData, yData] = prepareCurveData( Time, Voltage );
    ft = fittype( method );
    [Voltage_Fit] = fit( xData, yData, ft );
end

