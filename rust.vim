syn keyword rustSpecWords let mut return
syn match rustSpecWords "&"
syn keyword rustStatement fn nextgroup=rustFuncName skipwhite skipempty


syn keyword rustRepeat loop for while in 
syn keyword rustConditional if else match

syn match     rustDecNumber   display "\<[0-9][0-9_]*\%([iu]\%(size\|8\|16\|32\|64\|128\)\)\="
syn match     rustHexNumber   display "\<0x[a-fA-F0-9_]\+\%([iu]\%(size\|8\|16\|32\|64\|128\)\)\="
syn match     rustOctNumber   display "\<0o[0-7_]\+\%([iu]\%(size\|8\|16\|32\|64\|128\)\)\="
syn match     rustBinNumber   display "\<0b[01_]\+\%([iu]\%(size\|8\|16\|32\|64\|128\)\)\="
syn match     rustFloat       display "\<[0-9][0-9_]*\.\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\|\.\)\@!"
syn match     rustFloat       display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=\(f32\|f64\)\="
syn match     rustFloat       display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\=\%([eE][+-]\=[0-9_]\+\)\(f32\|f64\)\="
syn match     rustFloat       display "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\=\%([eE][+-]\=[0-9_]\+\)\=\(f32\|f64\)"

syn match rustSigns "[+=-]"
syn match rustSigs "[.]"

syn match rustFuncName "\%([^[:cntrl:][:space:][:punct:][:digit:]]\|_\)\%([^[:cntrl:][:punct:][:space:]]\|_\)*" display contained
syn keyword   rustType        isize usize char bool u8 u16 u32 u64 u128 f32
syn keyword   rustType        f64 i8 i16 i32 i64 i128 str Self

syn match     rustFuncCall    "\h\w\(\w\)*::"he=e-2,me=e-2
syn match     rustFuncCall    "\w\(\w\)*("he=e-1,me=e-1
syn region    rustString    matchgroup=Quote start=+b"+ skip=+\\\\\|\\"+ end=+"+ 
syn region    rustString    matchgroup=Quote start=+"+ skip=+\\\\\|\\"+ end=+"+
syn region    rustString    matchgroup=Quote start='b\?r\z(#*\)"' end='"\z1'

syn match rustStopHighlighting "[:]"

hi rustString guifg=#0080FF
hi rustDecNumber guifg=#00FFFF
hi rustFuncCall guifg=#00FFFF
hi rustStatement guifg=#F7005B
hi rustFuncName guifg=#CF71E6
hi rustFuncCall guifg=#66FF66
hi link rustSpecWords rustStatement
hi link rustRepeat rustStatement
hi link rustConditional rustStatement
hi link rustType rustStatement
hi link rustHexNumber rustDecNumber
hi link rustOctNumber rustDecNumber
hi link rustBinNumber rustDecNumber
hi link rustFloat rustDecNumber
