function note = getNote(req)

  Fs = 44100;
  t  = linspace(0, 1, Fs);
  w = 2*pi*req;
  note = sin(w*t);
  return
  
endfunction
