function [patients] = extract_para_battery(Voltage,Current,Voltage_dot, Current_dot,Architecture,segment_num)
size = round(length(Voltage)/segment_num);
last = length(Voltage) - ((segment_num-1)*(size));

Current_split = mat2cell(Current, 1,[(size*ones(1,segment_num-1)), last]);
Voltage_split = mat2cell(Voltage, 1, [(size*ones(1,segment_num-1)), last]);
Current_split_dot = mat2cell(diff(Current), 1, [(size*ones(1,segment_num-1)), last-1]);
Voltage_split_dot = mat2cell(diff(Voltage), 1, [(size*ones(1,segment_num-1)), last-1]);
switch Architecture
    case 0
        for i=1:segment_num
            FitData{i} =Static_Fitting(Current_split{1,i}',Voltage_split{1,i}');
            Cofficients{i} = coeffvalues(FitData{1,i});
            patients(i,:) = table(Cofficients{1,i});
        end
        patients = splitvars (patients);
        patients.Properties.VariableNames = ["VOC","R0"];
        patients = sortrows(patients,["VOC","R0"],"ascend");
    case 1
        for i=1:segment_num
            FitData{i} =Static_Fitting(Current_split{1,i}',Voltage_split{1,i}');
            Cofficients{i} = coeffvalues(FitData{1,i});
            patients(i,:) = table(Cofficients{1,i});
        end
        patients = splitvars (patients);
        patients.Properties.VariableNames = ["VOC","R0"];
        VOC_New = patients{:,"VOC"};
        clear patients R0
        for i=1:segment_num
            if i<segment_num
                X=[Current_split_dot{1,i}',Voltage_split{1,i}',Current_split{1,i}'];
            else
                X=[Current_split_dot{1,i}',Voltage_split{1,i}(1:end-1)',Current_split{1,i}(1:end-1)'];
            end
            Y=Voltage_split_dot{1,i}';
            mdl{i} = fitlm(X,Y);
            Cofficients_New{i}=mdl{1,i}.Coefficients.Estimate;
            R{i} = Cofficients_New{1,i}(2);
            taw1{i} = -1/Cofficients_New{1,i}(3);
            Beta{i} = Cofficients_New{1,i}(1);
            C1{i} = (taw1{1,i} / (R{i} + Cofficients_New{1,i}(4)));
            R1{i} = taw1{1,i}/C1{1,i};
        end
        patients = table(VOC_New,R',R1',C1','VariableNames',["VOC","R0","R1","C1"]);
        patients = sortrows(patients,["VOC","R0","C1","R1"],"ascend");
end
end