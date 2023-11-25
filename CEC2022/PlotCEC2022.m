function [x,y,FitnessValue]=PlotCEC2022(func_name)
    [~,~,~,fobj]=Get_CEC2022_details(func_name,2);
    x=-500:500; 
    y=x;
    L=length(x);
    FitnessValue=[];
    for i=1:L
        for j=1:L
            FitnessValue(i,j)=fobj([x(i),y(j)]);
        end
    end
end


