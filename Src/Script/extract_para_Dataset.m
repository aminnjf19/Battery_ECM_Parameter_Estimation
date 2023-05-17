function [Voltage,Current,Time,Param] = extract_para_Dataset(Dataset,Architecture,segment_num)
Time = Dataset.Time';
Voltage = Dataset.Voltage';
Current = Dataset.Current';
Voltage_dot = diff(Voltage);
Current_dot = diff(Current);
[Param] = extract_para_battery(Voltage,Current,Voltage_dot,Current_dot,Architecture,segment_num);
end