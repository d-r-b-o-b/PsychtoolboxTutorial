function [KeyNum, when] = waitForKeyPress(keyName, waitPeriod)

for i = 1:length(keyName)
    keys(i) = KbName(keyName{i});
end

% time out at infinity for now
timeOut = GetSecs+waitPeriod;

% wait for a keypress for TimeOut seconds
Pressed = 0;


while ~Pressed && (GetSecs < timeOut)
    [key, when, keycode] = KbCheck(-1);
    % a valid key was pressed (we ignore invalid keys presses)
    if (key && sum(keycode(keys)))
        
        KeyNum = find(keycode(keys),1);
        Pressed = 1;
        
    end
end

if Pressed == 0
    
    KeyNum = [];
    when = [];
    
end
