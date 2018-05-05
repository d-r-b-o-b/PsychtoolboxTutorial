clear


input(' ');

%% start psychtoolbox
whichScreen = 0;
bgColour = [0 0 0]+256; % rgb values [256 256 256] is white, [0 0 0] black
[window, rect] = Screen('OpenWindow', whichScreen, bgColour);
[A,B] = Screen('WindowSize', window);

%% load image
BOB_IMAGE = imread('Bob.jpg');

% resize image
scaleFactor = 0.5;
I_resized = imresize(BOB_IMAGE, [100 100]);


%% create texture
texture = Screen(window, 'MakeTexture', I_resized);

%% display texture (image)
pos = [100 200 300 500]; 
% pos is [x1 y1 x2 y2] - top left and bottom right points of the rectangle
% around the whole picture
Screen('DrawTexture', window, texture, [], pos);
flipTime = Screen('Flip', window, [], 0);
WaitSecs(2)

sca









%
% oldTextSize = Screen('TextSize', window, 80);
% DrawFormattedText(window, 'Hello World', 100, 100, [255 0 0], 70);
% flipTime = Screen('Flip', window, [], 0);
%
% % wait for input from user (or 2 seconds)
% [KeyNum, when] = waitForKeyPress({'a' 's' 'p'}, 5);
% ReactionTime = when - flipTime;
%
% DrawFormattedText(window, 'Bye-bye World', 100, 100, [255 0 0], 70);
% flipTime = Screen('Flip', window, [], 0);
%
% WaitSecs(2)
%
% sca

% to get out of Psychtoolbox
% control+c
% cmd+0 (perhaps repeat)
% control+c (perhaps repeat)
% type "sca"
% hit enter
% may need to repeat all steps multiple times


% KbCheck for keyboard input


