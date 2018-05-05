clear


input(' ');

%% start psychtoolbox
whichScreen = 0;
bgColour = [0 0 0]+256; % rgb values [256 256 256] is white, [0 0 0] black
[window, rect] = Screen('OpenWindow', whichScreen, bgColour);
[A,B] = Screen('WindowSize', window);


dt = 1/200;
timeOut = inf;
Pressed = 0;
count = 1;
max_count = 20*1000;

X = nan(max_count,1);
Y = nan(max_count,1);
while ~Pressed && (GetSecs < timeOut) && (count < max_count)
    
    [x,y,buttons] = GetMouse(window);
    Pressed = sum(buttons)>0;
    
    X(count) = x;
    Y(count) = y;
    count = count + 1;
    
    WaitSecs(dt);
end
sca




figure(1); clf;
plot(X, Y)

% to get out of Psychtoolbox
% control+c
% cmd+0 (perhaps repeat)
% control+c (perhaps repeat)
% type "sca"
% hit enter
% may need to repeat all steps multiple times


% KbCheck for keyboard input


