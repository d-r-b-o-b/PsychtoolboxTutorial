clear


input(' ');



whichScreen = 0;
bgColour = [0 0 0]; % rgb values [256 256 256] is white, [0 0 0] black

[window, rect] = Screen('OpenWindow', whichScreen, bgColour);
[A,B] = Screen('WindowSize', window);

% get times for displaying stuff
timeOn = GetSecs+2;
timeOn2 = timeOn+2;

% put together contents of screen 1
Screen('FillRect', window, [250 0 0], [100 100 500 200]);
Screen('FillRect', window, [0 250 0], [300 300 500 500]);
flipTime = Screen('Flip', window, timeOn, 0);

% put together contents of screen 2
Screen('FillRect', window, [250 0 250], [200 150 500 200]);
Screen('FillRect', window, [250 250 250], [300 300 500 500]);
flipTime2 = Screen('Flip', window, timeOn2, 0);

WaitSecs(2)

sca

% to get out of Psychtoolbox
% control+c
% cmd+0 (perhaps repeat)
% control+c (perhaps repeat)
% type "sca"
% hit enter
% may need to repeat all steps multiple times



