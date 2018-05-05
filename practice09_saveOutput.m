clear


input(' ');

%% start psychtoolbox
Screen('Preference', 'SkipSyncTests', 1); 
whichScreen = 0;
bgColour = [0 0 0]+256; % rgb values [256 256 256] is white, [0 0 0] black
[window, rect] = Screen('OpenWindow', whichScreen, bgColour);
[A,B] = Screen('WindowSize', window);
oldTextSize = Screen('TextSize', window, 80);


dt = 1/200;
timeOut = inf;


max_count = 20*1000;


for trial_count = 1:10
    
    DrawFormattedText(window, num2str(trial_count), 100, 100, [255 0 0], 70);
    flipTime = Screen('Flip', window, [], 0);
    
    X = nan(max_count,1);
    Y = nan(max_count,1);
    
    count = 1;
    Pressed = 0;
    while ~Pressed && (GetSecs < timeOut) && (count < max_count)
        
        [x,y,buttons] = GetMouse(window);
        Pressed = sum(buttons)>0;
        
        if Pressed
            when = GetSecs;
        end
        
        X(count) = x;
        Y(count) = y;
        count = count + 1;
        
        WaitSecs(dt);
    end
    
    
    % store data in a structure
    data(trial_count).X = X;
    data(trial_count).Y = Y;
    data(trial_count).time = when;
    WaitSecs(0.2);
end

sca
%%
% might not work for windows (need to use \ instead of /)
save('./data/filename') % save everything
save('./data/filename2', 'data', 'dt') % save just data and dt

% filename should be the subject id plus the date and time
subjectID = '001';
dateAndTime = datestr(now);
dateAndTime(dateAndTime==' ') = [];
dateAndTime(dateAndTime==':') = [];
dateAndTime(dateAndTime=='-') = [];

filename = ['expt_' subjectID '_' dateAndTime];
datadir = '~/Desktop/';
save([datadir filename], 'data', 'dt') % save just data and dt


% to get out of Psychtoolbox
% control+c
% cmd+0 (perhaps repeat)
% control+c (perhaps repeat)
% type "sca"
% hit enter
% may need to repeat all steps multiple times


% KbCheck for keyboard input


