MULTIPLICATION PROC
    
    MOV COUNTER,'*'
    CMP OPERAND,0
    JE ALTERMUL
    MOV AX,OPERAND
    XOR DX,DX
    MUL BX
    MOV OPERAND,AX
    CMP DX,0
    JNE OVERFLOW      ;OVERFLOW COUNTER
    JMP AFTERMATH
    
    ALTERMUL:
    MOV OPERAND,BX
    XOR BX,BX
    JMP L1
    
    RET
    MULTIPLICATION ENDP