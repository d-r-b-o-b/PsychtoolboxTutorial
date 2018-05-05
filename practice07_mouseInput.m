clear


input(' ');

%% start psychtoolbox
whichScreen = 0;
bgColour = [0 0 0]+256; % rgb values [256 256 256] is white, [0 0 0] black
[window, rect] = Screen('OpenWindow', whichScreen, bgColour);
[A,B] = Screen('WindowSize', window);


timeOut = inf;
Pressed = 0;
while ~Pressed && (GetSecs < timeOut)
    [x,y,buttons] = GetMouse(window);
    Pressed = sum(buttons)>0;
end
sca






% to get out of Psychtoolbox
% control+c
% cmd+0 (perhaps repeat)
% control+c (perhaps repeat)
% type "sca"
% hit enter
% may need to repeat all steps multiple times


% KbCheck for keyboard input


