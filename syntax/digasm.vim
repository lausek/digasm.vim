syn case ignore

" Comments
syn match digasmComment ";.*"

" Register
syn keyword digasmRegister R0 R1 R2 R3 R4 R5 R6
syn keyword digasmRegister R7 R8 R9 R10 R11 R12
syn keyword digasmRegister BP SP RA

" Keywords
syn keyword digasmKeyword NOP
syn keyword digasmKeyword MOV LD LDI LDS LDD ST STS STD
syn keyword digasmKeyword ADD ADC ADDI ADCI 
syn keyword digasmKeyword SUB SBC SUBI SBCI
syn keyword digasmKeyword OR ORI AND ANDI EOR EORI
syn keyword digasmKeyword MUL MULI
syn keyword digasmKeyword CPI
syn keyword digasmKeyword LSL LSR ROL ROR ASR
syn keyword digasmKeyword CMP SWAP SWAPN
syn keyword digasmKeyword BRCS BREQ BRMI BRCC BRNE BRPL
syn keyword digasmKeyword RCALL RRET
syn keyword digasmKeyword JMP IN INR OUT OUTR
syn keyword digasmKeyword BRK RETI

" Macros
syn keyword digasmKeyword POP PUSH
syn keyword digasmKeyword CALL RET _SCALL
syn keyword digasmKeyword LEAVE LEAVEI ENTER ENTERI
syn keyword digasmKeyword DEC INC

" Directive
syn match digasmBuiltin "\.reg"
syn match digasmBuiltin "\.long"
syn match digasmBuiltin "\.org"
syn match digasmBuiltin "\.const"
syn match digasmBuiltin "\.include"
syn match digasmBuiltin "\.word"
syn match digasmBuiltin "\.dorg"
syn match digasmBuiltin "\.data"

syn case match

" Operators
syn match digasmOperator "\(+\|\[\|\]\)"

" Numbers
syn match digasmNumber /\<\d\+\(\.\)\?\d*/

" Strings
syn region digasmString start='"' end='"'

hi def link digasmBuiltin PreProc
hi def link digasmComment Comment
hi def link digasmOperator Operator
hi def link digasmKeyword Keyword
hi def link digasmNumber Number
hi def link digasmMacros Constant
hi def link digasmRegister Type
hi def link digasmString String
