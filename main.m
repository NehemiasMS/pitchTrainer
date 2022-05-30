% PITCH PERFECT
clear all
clc

% global variables
Fs = 44100;

% notes database
C3 = 261.63/2;
D3 = 293.66/2;
E3 = 329.63/2;
F3 = 349.23/2;
G3 = 392.00/2;
A3 = 440.00/2;
B3 = 493.88/2;

C4 = 261.63;
D4 = 293.66;
E4 = 329.63;
F4 = 349.23;
G4 = 392.00;
A4 = 440.00;
B4 = 493.88;

C5 = 261.63*2;
D5 = 293.66*2;
E5 = 329.63*2;
F5 = 349.23*2;
G5 = 392.00*2;
A5 = 440.00*2;
B5 = 493.88*2;

% call functions
game = 0;

while game != 4
  disp("what u want to do?")
  disp("#1 level 1. - LISTEN AND SING")
  disp("#2 level 2. - READ AND SING")
  disp("#3 level 3. - LISTEN AND WRITE")
  disp("#4 exit...")
  game = input("So what level you want to go to?: ");

  switch(game)
    case 1
      pitchPerfect_1()
    case 2
      pitchPerfect_2()
    case 3
      pitchPerfect_3()
    otherwise
      clc
      disp("Please choose one of the options below")
      disp("--------------------------------------")
    endswitch

endwhile

clear all
clc













