clear

input(' ');
whichScreen = 0;
bgColour = [0 0 0]+256; % rgb values [256 256 256] is white, [0 0 0] black

[window, rect] = Screen('OpenWindow', whichScreen, bgColour);
[A,B] = Screen('WindowSize', window);

oldTextSize = Screen('TextSize', window, 80);
DrawFormattedText(window, 'Hello World', 100, 100, [255 0 0], 70);
flipTime = Screen('Flip', window, [], 0);

% setting up the keys I want to be able to press
keyName = {'a' 's' 'p'};
for i = 1:length(keyName)
    keys(i) = KbName(keyName{i});
end
validKeys = [1 2];
% time out at infinity for now
timeOut = GetSecs+5;%inf;

% wait for a keypress for TimeOut seconds
Pressed = 0;


while ~Pressed && (GetSecs < timeOut)
    [key, when, keycode] = KbCheck(-1);
    % a valid key was pressed (we ignore invalid keys presses)
    if (key && sum(keycode(keys)))
        
        KeyNum = find(keycode(keys),1);
        if ~isempty(intersect(KeyNum, validKeys))
            Pressed = 1;
        end
    end
end

if Pressed == 0
    
    KeyNum = [];
    when = [];
    
end



DrawFormattedText(window, 'Bye-bye World', 100, 100, [255 0 0], 70);
flipTime2 = Screen('Flip', window, [], 0);

WaitSecs(2)


sca

% to get out of Psychtoolbox
% control+c
% cmd+0 (perhaps repeat)
% control+c (perhaps repeat)
% type "sca"
% hit enter
% may need to repeat all steps multiple times


% KbCheck for keyboard input


