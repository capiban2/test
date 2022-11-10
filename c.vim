syn keyword     cConditional    if else switch case
syn keyword     cRepeat         while for do
syn keyword     cStatement      goto break return continue asm
syn region      cIncluded       display contained start=+"+ skip=+\\\\\|\\"+ end=+"+
syn match       cIncluded       display contained "<[^>]*>"
syn match       cInclude        display "^\s*\zs\%(%:\|#\)\s*include\>\s*["<]" contains=cIncluded
syn region      cDefine         start="^\s*\zs\%(%:\|#\)\s*\%(define\|undef\)\>" skip="\\$" end="$" keepend contains=ALLBUT,@cPreProcGroup,@Spell
syn region      cPreProc        start="^\s*\zs\%(%:\|#\)\s*\%(pragma\>\|line\>\|warning\>\|warn\>\|error\>\)" skip="\\$" end="$" keepend contains=ALLBUT,@cPreProcGroup,@Spell

syn case ignore
syn match       cNumbers        display transparent "\<\d\|\.\d" contains=cNumber,cFloat,cOctalError,cOctal
" Same, but without octal error (for comments)
syn match       cNumbersCom     display contained transparent "\<\d\|\.\d" contains=cNumber,cFloat,cOctal
syn match       cNumber         display contained "\d\+\%(u\=l\{0,2}\|ll\=u\)\>"
"hex number
syn match       cNumber         display contained "0x\x\+\%(u\=l\{0,2}\|ll\=u\)\>"
" Flag the first zero of an octal number as something special
syn match       cOctal          display contained "0\o\+\%(u\=l\{0,2}\|ll\=u\)\>" contains=cOctalZero

"floating point number, with dot, optional exponent
syn match       cFloat          display contained "\d\+\.\d*\%(e[-+]\=\d\+\)\=[fl]\="
"floating point number, starting with a dot, optional exponent
syn match       cFloat          display contained "\.\d\+\%(e[-+]\=\d\+\)\=[fl]\=\>"
"floating point number, without dot, with exponent
syn match       cFloat          display contained "\d\+e[-+]\=\d\+[fl]\=\>"

hi cConditional guifg=#0080FF
hi link cRepeat cConditional
hi cStatement guifg=#009999
hi cNumbers guifg=#99FFFF
hi link cNumber cNumbers
hi link cOctal cNumbers
hi link cFloat cNumbers
hi cInclude guifg=#B17BE6
hi link cDefine cInclude 
hi link cPreProc cInclude


