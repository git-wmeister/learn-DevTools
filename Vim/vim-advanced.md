# vim registor for text snippets and macros

## "{} reigister

`"a yy` yenks line in buffer a

`"a p` paste buffer a

## q{} "macro" esc q

q a – Record/re-record a macro in register "a (starts recording, q again to stop)  
You can use any register (a–z), and they work the same way with @ followed by the register name.
`qa A, Esc q` **q** statrs markro ***Esc q*** stops and writes

## To run a Vim macro stored in register "a, use:

This executes the macro once. Here are related commands:

`@a` – Execute macro in register "a once  
`5@a` – Execute macro in register "a 5 times (repeat N times)  
`@@` – Repeat the last macro execution
