" Macros
syn keyword syntaxMacro POP PUSH
syn keyword syntaxMacro CALL RET _SCALL
syn keyword syntaxMacro LEAVE LEAVEI ENTER ENTERI
syn keyword syntaxMacro DEC INC

" Keywords
syn keyword syntaxKeyword NOP
syn keyword syntaxKeyword MOV LD LDI LDS LDD ST STS STD
syn keyword syntaxKeyword ADD ADC ADDI ADCI 
syn keyword syntaxKeyword SUB SBC SUBI SBCI
syn keyword syntaxKeyword OR ORI AND ANDI EOR EORI
syn keyword syntaxKeyword MUL MULI
syn keyword syntaxKeyword CPI
syn keyword syntaxKeyword LSL LSR ROL ROR ASR
syn keyword syntaxKeyword CMP SWAP SWAPN
syn keyword syntaxKeyword BRCS BREQ BRMI BRCC BRNE BRPL
syn keyword syntaxKeyword RCALL RRET
syn keyword syntaxKeyword JMP IN INR OUT OUTR
syn keyword syntaxKeyword BRK RETI

" Directive
syn match syntaxBuiltin "\.reg" "\.long" "\.org" "\.const" "\.include" "\.word" "\.dorg" "\.data"

" Operators
syn match syntaxOperator "\(+\|\[\|\]\)"

" Numbers
syn match syntaxNumber /\<\d\+\(\.\)\?\d*/

" Strings
syn region syntaxString start='"' end='"'

hi def link syntaxBuiltin PreProc
hi def link syntaxOperator Operator
hi def link syntaxKeyword Keyword
hi def link syntaxNumber Number
hi def link syntaxMacros Constant
hi def link syntaxString String
