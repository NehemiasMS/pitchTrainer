function recObj = recordAudio ()

  recObj = audiorecorder;

  Fs = 44100 ; 
  nBits = 16 ; 
  nChannels = 2 ; 
  ID = -1; % default audio input device 
  recObj = audiorecorder(Fs,nBits,nChannels,ID);

  input("Press Enter to start recording");
  disp('Start speaking.')
  recordblocking(recObj,2);
  disp('End of Recording.');

  return
endfunction
