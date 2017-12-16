
(* The type of tokens. *)

type token = 
  | TRUE
  | THEN
  | SUCC
  | SEMICOLON
  | RPAREN
  | PRED
  | LPAREN
  | ISZERO
  | INTV of (int)
  | IF
  | FALSE
  | EOF
  | ELSE

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val toplevel: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ( Syntax.command list)
