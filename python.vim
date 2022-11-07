hi def link pythonClassStmt Statement
hi pythonClass ctermfg=lightgreen guifg=darkgreen
syn keyword pythonSelf self
hi pythonSelf guifg=#FFD0B5
syntax region str1 matchgroup=Quote start=+"+  skip=+\\"+  end=+"+
hi str1 guifg=#6666FF
syntax region str2 matchgroup=Quote start=+'+  skip=+\\'+  end=+'+
hi str2 guifg=#6666FF
syn match   pythonFunction      "\h\w*" display contained
hi pythonFunction guifg=#43FFAE
syn keyword pythonDefinition def class nextgroup=pythonFunction skipwhite
hi pythonDefinition guifg=#3399FF
syn keyword pythonReturn False None True
hi pythonReturn guifg=#F98A49
syn match   pythonShebang       /\%^#![^[].*/
hi pythonShebang guifg=#FCD988
syn keyword pythonControll break continue return as assert with lambda except raise finally try pass yield
hi pythonControll guifg=#009999
syn match pythonDecorator "@\s*\h\%(\w\|\.\)*"
hi pythonDecorator guifg=#DFEE5C

syn region  pythonFString matchgroup=Quote
      \ start=+[f]\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1"
	
hi pythonFString guifg=#6666FF

syn keyword pythonStopHighlighting id

hi pythonStopHighlighting guifg=#FFFFFF
syn match pythonFuncCall "_\=\w\(\w\)*("he=e-1,me=e-1
syn keyword pythonSpecialFuncs __init__ __name__ __repr__ __str__

hi pythonFuncCall guifg=#43FFAE
hi pythonSpecialFuncs guifg=#43FFAE
syn keyword pythonConditional else if elif for in while is not or and  
hi pythonConditional guifg=#DC59BE

syn match pythonSigns "[=+,<>*!/]"
syn match pythonSigns ":"
syn match pythonSigns "-"
hi pythonSigns guifg=#DC59BE
