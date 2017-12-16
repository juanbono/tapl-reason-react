
{
    open ArithParser
    exception Error of string
}

rule token = parse
| [' ' '\t' '\n'] { token lexbuf}
| ';' { SEMICOLON }
| "true" { TRUE }
| "false" { FALSE }
| "succ" { SUCC }
| "pred"  { PRED }
| "iszero" { ISZERO }
| "if" { IF }
| "then" { THEN }
| "else" { ELSE }
| ['0'-'9']+ as i { INTV (int_of_string i) }
| '(' { LPAREN }
| ')' { RPAREN }
| eof { EOF }
| _ { raise (Error (Printf.sprintf "At offset %d: unexpected character.\n" (Lexing.lexeme_start lexbuf))) }
