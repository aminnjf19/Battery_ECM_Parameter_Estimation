function [fitresult_VOC , fitresult_R0 , fitresult_R1 ,fitresult_C1,VOC_Coeff,R0_Coeff,R1_Coeff,C1_Coeff] = createFit_Battery_Parameters_TimeCon(SOC, Data1 , Data2,Data3,Data4,method)
    ft = fittype( method );
    opts = fitoptions( 'Method', 'LinearLeastSquares' );
    opts.Robust = 'LAR';
    [xData, yData_VOC] = prepareCurveData( SOC, Data1 );
    [fitresult_VOC] = fit( xData, yData_VOC, ft ,opts);
    [xData, yData_R0] = prepareCurveData( SOC, Data2 );
    [fitresult_R0] = fit( xData, yData_R0, ft ,opts);
    [xData, yData_R1] = prepareCurveData( SOC, Data3 );
    [fitresult_R1] = fit( xData, yData_R1, ft ,opts);
    [xData, yData_C1] = prepareCurveData( SOC, Data4 );
    [fitresult_C1] = fit( xData, yData_C1, ft,opts );

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
    R0_Coeff = [zero_coeff,coeffvalues(fitresult_R0)];
    R1_Coeff = [zero_coeff,coeffvalues(fitresult_R1)];
    C1_Coeff = [zero_coeff,coeffvalues(fitresult_C1)];
end
