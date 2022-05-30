function pitchPerfect_1()

  pkg load signal

  disp("Welcome to Pitch Perfect Level 1")

  Fs = 44100;  
  notes = ["C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5"];
  notes1 = [261.63/2;293.66/2;329.63/2;349.23/2;392.00/2;440.00/2;493.88/2;
  261.63;293.66;329.63;349.23;392;440;493.88;
  261.63*2;293.66*2;329.63*2;349.23*2;392*2;440.00*2;493.88*2];
  
  % notes database
  C3 = 261.63/2; % 130.81
  D3 = 293.66/2; % 146.83
  E3 = 329.63/2; % 164.81
  F3 = 349.23/2; % 174.62
  G3 = 392.00/2; % 192
  A3 = 440.00/2; % 220
  B3 = 493.88/2; % 246.94

  C4 = 261.63;
  D4 = 293.66;
  E4 = 329.63;
  F4 = 349.23;
  G4 = 392.00;
  A4 = 440.00;
  B4 = 493.88;

  C5 = 261.63*2; % 523.26
  D5 = 293.66*2; % 587.32
  E5 = 329.63*2; % 659.26
  F5 = 349.23*2; % 698.46
  G5 = 392.00*2; % 784
  A5 = 440.00*2; % 880
  B5 = 493.88*2; % 987.76
  
  n = randi([1, 21]);
  disp(n)
  
  sound(getNote(notes1(n)), Fs);
  freq = abs(fft(getNote(notes1(n))));

  res = recordAudio();
  
  a1 = getaudiodata(res);
  
  freq2 = abs(fft(a1));

  [v, note2send] = max(freq);
  [v, sound2send] = max(freq2);
  
  result = compare(note2send, sound2send(1));
  clc
  if (result)
    disp("damn bitch u good at this shit")
  else
    disp("keep trying bitch")
  endif
  
  
  return
  
endfunction
