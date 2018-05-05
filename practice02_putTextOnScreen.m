clear

input(' ');
% whichScreen tells you which monitor psychtoolbox will work on set to 0
% for the main screen!!!
whichScreen = 0;
bgColour = [0 0 0]+256; % rgb values [256 256 256] is white, [0 0 0] black

% This is a comment matlab will ignore this

% this line is opening up a window on the screen whichScreen
[window, rect] = Screen('OpenWindow', whichScreen, bgColour);
[A,B] = Screen('WindowSize', window);


% set font size
oldTextSize = Screen('TextSize', window, 80);

% draw yellow square
Screen('FillRect', window, [250 250 0], [100 100 900 500]);

% draw text
DrawFormattedText(window, 'Hello World whatever else', 400, 300, [255 0 0], 70);

flipTime = Screen('Flip', window, [], 0);

WaitSecs(2)

sca

% to get out of Psychtoolbox
% control+c
% cmd+0 (perhaps repeat)
% control+c (perhaps repeat)
% type "sca"
% hit enter
% may need to repeat all steps multiple times




