close all;
SOC = ans.SOC;
Calculated_Voltage=ans.Calculated_Voltage;
Calculated_Voltage = flip(Calculated_Voltage);
Error_Voltage = ans.Error_Voltage;
% figure(1)
% plot(Time,Voltage)
% title("Terminal Voltage")
% xlabel("Time (sec)")
% ylabel("Voltage (V)")
% %%
% figure(2)
% plot(Time,Current)
% title("Applied Current")
% xlabel("Time (sec)")
% ylabel("Current (A)")
%%
figure(3)
yyaxis left
plot(Time,Voltage)
ylabel("Voltaget (V)")
hold on
yyaxis right
plot(Time,Current)
title("Dateset Info")
xlabel("Time (sec)")
ylabel("Current (A)")
%%
if (Architecture == 0)
    figure(4)
    plot(VOC_Param, SOC_Plot_act, VOC);
    legend('Samples' , 'Fitted Curve')
    title("Battery Open Circuit Voltage")
    xlabel( 'SOC (%)', 'Interpreter', 'none' );
    ylabel( 'VOC (V)', 'Interpreter', 'none' );
    grid on
    
    figure(5)
    plot(R0_Param, SOC_Plot_act, R0);
    legend('Samples' , 'Fitted Curve')
    title("Battery Internal Resistance")
    xlabel( 'SOC (%)', 'Interpreter', 'none' );
    ylabel( 'R0 (Ohm)', 'Interpreter', 'none' );
    grid on
elseif (Architecture == 1)
    figure(4)
    plot(VOC_Param, SOC_Plot_act, VOC);
    legend('Samples' , 'Fitted Curve')
    title("Battery Open Circuit Voltage")
    xlabel( 'SOC (%)', 'Interpreter', 'none' );
    ylabel( 'VOC (V)', 'Interpreter', 'none' );
    grid on
    
    figure(5)
    plot(R0_Param, SOC_Plot_act, R0);
    legend('Samples' , 'Fitted Curve')
    title("Battery Internal Resistance")
    xlabel( 'SOC (%)', 'Interpreter', 'none' );
    ylabel( 'R0 (Ohm)', 'Interpreter', 'none' );
    grid on

    figure(6)
    plot(R1_Param, SOC_Plot_act, R1);
    legend('Samples' , 'Fitted Curve')
    title("Battery Dynamic Resistance")
    xlabel( 'SOC (%)', 'Interpreter', 'none' );
    ylabel( 'R1 (Ohm)', 'Interpreter', 'none' );
    grid on
    
    figure(7)
    plot(C1_Param, SOC_Plot_act, C1);
    legend('Samples' , 'Fitted Curve')
    title("Battery Dynamic Capacitor")
    xlabel( 'SOC (%)', 'Interpreter', 'none' );
    ylabel( 'Capacity (F)', 'Interpreter', 'none' );
    grid on
end
%%
figure(9)
plot( V_Param, Time ,Voltage)
hold on
plot(Calculated_Voltage)
title("Voltage Comparison ")
xlabel("Time (sec)")
ylabel("Voltage (V)")
legend("Samples","Fitted Curve of Dataset Voltage","ECM Model")
