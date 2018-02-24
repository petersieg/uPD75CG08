        cpu 7508
        org 0
        db 100 dup (0)
go:     lai 0
        op3
        call delay
        nop
        lai 1
        op3
        call delay
        nop
        lai 2
        op3
        call delay
        nop
        lai 3
        op3
        call delay
        nop
        lai 4
        op3
        call delay
        nop
        lai 5
        op3
        call delay
        nop
        lai 6
        op3
        call delay
        nop
        lai 7
        op3
        call delay
        nop
        lai 8
        op3
        call delay
        nop
        lai 9
        op3
        call delay
        nop
        lai 10
        op3
        call delay
        nop
        lai 11
        op3
        call delay
        nop
        lai 12
        op3
        call delay
        nop
        lai 13
        op3
        call delay
        nop
        lai 14
        op3
        call delay
        nop
        lai 15
        op3
        call delay
        nop
        jmp go
delay:  db 500 dup(03eh,0aah) ;TAD 2 M-cycles
        db 425 dup(03eh,0aah) ;TAD 2 M-cycles
        rt
        end
