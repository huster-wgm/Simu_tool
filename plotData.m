function plotData(X, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the training data into a figure using the 
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

figure; % open a new figure window
plot(X, y, 'ro', 'MarkerSize', 10); % Plot the data through
%{
markerstyle
‘+’	crosshair
‘o’	circle
‘*’	star
‘.’	point
‘x’	cross
‘s’	square
‘d’	diamond
‘^’	upward-facing triangle
‘v’	downward-facing triangle
‘>’	right-facing triangle
‘<’	left-facing triangle
‘p’	pentagram
‘h’	hexagram
color
‘k’	blacK
‘r’	Red
‘g’	Green
‘b’	Blue
‘m’	Magenta
‘c’	Cyan
‘w’	White
%}
xlabel('pH');% Set  x label
ylabel('Absorbance'); % Set  y label



% ============================================================

end
