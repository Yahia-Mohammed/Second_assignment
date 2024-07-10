clc
clear
Product_Cost = [6 2 1;2 5 4;4 3 2;9 7 3]*1000
Quarterly_Product_Volume = [ 10 12 13 15;8 7 6 4;12 10 13 9;6 4 11 5]
for col=1:size(Quarterly_Product_Volume)
    for row=1:min(size(Product_Cost))
        Quarterly_cost (row,col) = sum(Quarterly_Product_Volume(1:4,col).*Product_Cost(1:4,row))
    end
end
for row=1:min(size(Quarterly_cost)) 
    Total_per_year(row)= sum (Quarterly_cost(row,1:4))
end
for col=1:size(Quarterly_Product_Volume) 
    Total_Quarterly_cost(col)= sum (Quarterly_cost(1:3,col))
end