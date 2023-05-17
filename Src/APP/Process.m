Time = Dataset_File.Time';
Voltage = Dataset_File.Voltage';
Current = Dataset_File.Current';
Voltage_dot = diff(Voltage);
Current_dot = diff(Current);
[Param] = extract_para_battery(Voltage,Current,Voltage_dot,Current_dot,Architecture,segment_num);
VOC = Param.VOC;
R0 = Param.R0;
assignin('base','VOC',VOC);
assignin('base','R0',R0);
if (Architecture==1)
    R0 = cell2mat(Param.R0);
    R1 = cell2mat(Param.R1);
    C1 = cell2mat(Param.C1);
    assignin('base','R0',R0);
    assignin('base','R1',R1);
    assignin('base','C1',C1);
end
[V_Param] = createFit_Vol(Voltage,Time,method);
if (Architecture==0)
    [VOC_Param , R0_Param,VOC_SOC_para,R0_SOC_para] = createFit_Battery_Parameters(SOC_Plot_act,VOC,R0,method);
    assignin('base','VOC_Param',VOC_Param);
    assignin('base','R0_Param',R0_Param);
    assignin('base','VOC_SOC_para',VOC_SOC_para);
    assignin('base','R0_SOC_para',R0_SOC_para);
elseif (Architecture==1)
    [VOC_Param , R0_Param , R1_Param , C1_Param,VOC_SOC_para,R0_SOC_para,R1_SOC_para,C1_SOC_para] = createFit_Battery_Parameters_TimeCon(SOC_Plot_act,VOC,R0,R1,C1,method);
    assignin('base','VOC_Param',VOC_Param);
    assignin('base','R0_Param',R0_Param);
    assignin('base','R1_Param',R1_Param);
    assignin('base','C1_Param',C1_Param);
    assignin('base','VOC_SOC_para',VOC_SOC_para);
    assignin('base','R0_SOC_para',R0_SOC_para);
    assignin('base','R1_SOC_para',R1_SOC_para);
    assignin('base','C1_SOC_para',C1_SOC_para);
end
Static=Simulink.Variant('Architecture == 0');
Dynamic=Simulink.Variant('Architecture == 1');
sim('Final_ECM_App.slx');