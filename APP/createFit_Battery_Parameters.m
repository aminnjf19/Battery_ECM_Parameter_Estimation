function [fitresult_VOC , fitresult_R0,VOC_Coeff,R0_Coeff] = createFit_Battery_Parameters(SOC, Data1 , Data2,method)
    [xData, yData_VOC] = prepareCurveData( SOC, Data1 );
    ft = fittype( method );
    opts = fitoptions( 'Method', 'LinearLeastSquares' );
    opts.Robust = 'LAR';
    [fitresult_VOC] = fit( xData, yData_VOC, ft ,opts);
    [xData, yData_R0] = prepareCurveData( SOC, Data2 );
    [fitresult_R0] = fit( xData, yData_R0, ft ,opts);

    if (method == 'poly1')
        zero_coeff = zeros(1,7);
    elseif(method == 'poly3')
        zero_coeff = zeros(1,5);
    elseif(method == 'poly5')
        zero_coeff = zeros(1,3);
    elseif(method == 'poly8')
        zero_coeff = zeros(0,0);
    end
    
    VOC_Coeff = [zero_coeff,coeffvalues(fitresult_VOC)];
    R0_Coeff = [zero_coeff, coeffvalues(fitresult_R0)]; 
end
