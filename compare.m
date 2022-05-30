function retval = compare(note, actualSound)
  
  retval = false;
  note = note/2;
  
  for x=1:3
  
    if(actualSound > note-15 && actualSound < note+15)
      retval = true;
      return
    endif  
    note = note*2;
  endfor
  
  return
endfunction