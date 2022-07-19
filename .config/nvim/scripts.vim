if did_filetype()	" filetype already set..
  finish		" ..don't do these checks
endif
if getline(1) =~ '^#!.*\<cls\>'
  setfiletype cls
elseif getline(1) =~? '\<trigger\>'
  setfiletype trigger
elseif getline(1) =~? '\<apex\>'
  setfiletype apex
endif
