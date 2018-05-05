clear


input(' ');

%% start psychtoolbox
whichScreen = 0;
bgColour = [0 0 0]+256; % rgb values [256 256 256] is white, [0 0 0] black
[window, rect] = Screen('OpenWindow', whichScreen, bgColour);
[A,B] = Screen('WindowSize', window);

%% load image
BOB_IMAGE = imread('Bob.jpg');
BOB_IMAGE2 = imread('Bob2.jpg');

% resize image
scaleFactor = 0.5;
I_resized = imresize(BOB_IMAGE, [100 100]);
I_resized2 = imresize(BOB_IMAGE2, [100 100]);

%% create texture
% do this at the start of the experiment - shouldn't be loading images and
% creating textures DURING the experiment
texture(1) = Screen(window, 'MakeTexture', I_resized);
texture(2) = Screen(window, 'MakeTexture', I_resized2);

%% display texture (image)
pos = [100 200 1000 500];
pos2 = [100 200 1000 500];

% pos is [x1 y1 x2 y2] - top left and bottom right points of the rectangle
% around the whole picture
for i = 1:2
    
    Screen('DrawTexture', window, texture(1), [], pos);
    flipTime = Screen('Flip', window, [], 0);
    WaitSecs(0.5)
    
    Screen('DrawTexture', window, texture(2), [], pos2);
    flipTime = Screen('Flip', window, [], 0);
    WaitSecs(0.5)
    
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


