if exists("b:current_syntax")
  finish
endif

" All keywords for nic, they are not case sensitive.

syntax keyword nicWordUpper0 SH SP CS EQ QE VALU DUP DUPS DUPV FLIP FLOP PUSH POP ADD SUB NEGA DIV MUL MOD DIM
syntax keyword nicWordUpper1 IDX VAR VARL TYPL LIST SHOW RUN TRAN COMP RAND DROP SWAP ROT TYPE AS EXE XEX NAME
syntax keyword nicWordUpper2 LN CP DEL ADEL AVAR AUTO LOCK UNLO STRI PRIN PR VIEW SAVE APEN LOAD EDIT 
syntax keyword nicWordUpper3 LEN GLUE PACK INC DEC EXP LOG
syntax keyword nicWordUpper4 ABS SIGN POW SQRT COS SIN TAN ACOS ASIN ATAN NMAX NMIN NAVE ARRA PUT PUTN NEWT CC HEAD TAIL
syntax keyword nicWordUpper5 CUT SLEN OFFS SPLI CHOP CIN TICK USEC NTOA DADD DDEL DFIN WAIT EXIT INCH INMM UN SMUL VMUL VADD
syntax keyword nicWordUpper6 INV VSUB ANGL GRAD RAD LINE UMAT TMAT RXYZ MMUL MADD MTRA NEL PATH CLOS OPEN SIMP STOK HELP

syntax keyword nicWord0 sh sp cs eq qe valu dup dups dupv flip flop push pop add sub nega div mul mod dim
syntax keyword nicWord1 idx var varl typl list show run tran comp rand drop swap rot type as exe xex name
syntax keyword nicWord2 ln cp del adel avar auto lock unlo stri prin pr view save apen load edit 
syntax keyword nicWord3 len glue pack inc dec exp log
syntax keyword nicWord4 abs sign pow sqrt cos sin tan acos asin atan nmax nmin nave arra put putn newt cc head tail
syntax keyword nicWord5 cut slen offs spli chop cin tick usec ntoa dadd ddel dfin wait exit inch inmm un smul vmul vadd
syntax keyword nicWord6 inv vsub angl grad rad line umat tmat rxyz mmul madd mtra nel path clos open simp stok help

syntax keyword nicIf if IF
syntax keyword nicThen then THEN
syntax keyword nicElse else ELSE
syntax keyword nicFor loop LOOP
syntax keyword nicWhile repe REPE

syntax keyword nicDataType VOID void STRI stri INT int UDEF udef BYTE byte LETR letr CHAR char DUBL dubl TEXT text WORD word DB db DOT dot VEC vec UVEC uvec PDOT pdot RVEC rvec MAT mat MATX matx

syntax keyword nicEscape start=/\v:/

syntax region nicString start=/\v"/ skip=/\v\\./ end=/\v"/

" syntax match nicTagNote "@\<\w\+\>" display

" syntax match nicClass "\v<[A-Z]\w+>" display
" syntax match nicConstant "\v<[A-Z0-9,_]+>" display

syntax match nicInteger "\<\d\+\>" display
syntax match nicFloat "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\%([eE][+-]\=[0-9_]\+\)\=" display

syntax match nicLiteral "\\[0-9A-Za-z]" display

" syntax match nicTemplate "$\<\w\+\>"

syntax match nicCommentNote "@\<\w\+\>" contained display
syntax match nicLineComment "#.*" contains=nicCommentNote
" syntax region nicBlockComment start=/\v\/\*/ end=/\v\*\// contains=nicBlockComment, nicCommentNote

highlight link nicWordUpper0 Keyword
highlight link nicWordUpper1 Keyword
highlight link nicWordUpper2 Keyword
highlight link nicWordUpper3 Keyword
highlight link nicWordUpper4 Keyword
highlight link nicWordUpper5 Keyword
highlight link nicWordUpper6 Keyword

highlight link nicWord0 Keyword
highlight link nicWord1 Keyword
highlight link nicWord2 Keyword
highlight link nicWord3 Keyword
highlight link nicWord4 Keyword
highlight link nicWord5 Keyword
highlight link nicWord6 Keyword

" highlight link nicIt Keyword
" highlight link nicCast Keyword
" highlight link nicReturn Keyword

highlight link nicEscape Operator

" highlight link nicInline Keyword
" highlight link nicNoInline Keyword

highlight link nicString String

" highlight link nicEnum Structure
" highlight link nicFunction Function

highlight link nicSLComment Comment

highlight link nicIf Conditional
highlight link nicThen Conditional
highlight link nicElse Conditional
highlight link nicFor Repeat
highlight link nicWhile Repeat

highlight link nicLineComment Comment
" highlight link nicBlockComment Comment
highlight link nicCommentNote Todo

" highlight link nicClass Type

highlight link nicLiteral Constant

" highlight link nicTagNote Identifier

highlight link nicDataType Type

" highlight link nicBool Boolean
" highlight link nicConstant Constant
" highlight link nicNull Type
highlight link nicInteger Number
highlight link nicFloat Float
" highlight link nicHex Number

let b:current_syntax = "nic"
