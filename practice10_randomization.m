clear

%% CRITICAL - for most experiments will want to set the random seed randomly!
% set the state of the random number generater to the current time
rSeed = GetSecs; % could then save rSeed
rand('seed',rSeed)

%% rand - 1 random number from 0 to 1
x = rand

%% rand(A,B) - lots of random numbers
x = rand(10,2)

%% permute a bunch of numbers
randperm(10)




% to get out of Psychtoolbox
% control+c
% cmd+0 (perhaps repeat)
% control+c (perhaps repeat)
% type "sca"
% hit enter
% may need to repeat all steps multiple times


% KbCheck for keyboard input


