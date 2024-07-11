clc
clear
disp("The five resistances in ohms: ")
R = [10^4, 2*10^4, 3.5*10^4, 10^5, 2*10^5]
disp("The applied voltage drops on them in volts respectively: ")
V = [120, 80, 110, 200, 350]
disp("Their currents in amperes respectively: ")
I = V./R
disp("Their power dissipations in watts respectively: ")
P = V.^2./R
