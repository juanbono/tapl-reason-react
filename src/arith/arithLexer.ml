# 2 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
 
    open ArithParser
    exception Error of string

# 7 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\241\255\242\255\243\255\244\255\012\000\000\000\002\000\
    \000\000\001\000\000\000\005\000\254\255\255\255\002\000\003\000\
    \005\000\253\255\000\000\247\255\003\000\006\000\006\000\252\255\
    \000\000\001\000\251\255\012\000\022\000\250\255\248\255\001\000\
    \023\000\011\000\015\000\249\255\012\000\027\000\246\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\255\255\255\255\010\000\014\000\014\000\
    \014\000\014\000\014\000\014\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_default =
   "\001\000\000\000\000\000\000\000\000\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\000\000\000\000\255\255\255\255\
    \255\255\000\000\255\255\000\000\255\255\255\255\255\255\000\000\
    \255\255\255\255\000\000\255\255\255\255\000\000\000\000\255\255\
    \255\255\255\255\255\255\000\000\255\255\255\255\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\013\000\013\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \004\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\000\000\012\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\020\000\000\000\025\000\026\000\006\000\010\000\018\000\
    \030\000\007\000\017\000\023\000\036\000\014\000\019\000\021\000\
    \008\000\028\000\027\000\009\000\011\000\031\000\024\000\015\000\
    \016\000\022\000\029\000\032\000\033\000\034\000\035\000\037\000\
    \038\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\000\000\005\000\005\000\005\000\005\000\
    \005\000\005\000\005\000\005\000\005\000\005\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\010\000\255\255\024\000\025\000\000\000\000\000\014\000\
    \007\000\000\000\016\000\022\000\006\000\011\000\018\000\020\000\
    \000\000\027\000\008\000\000\000\000\000\007\000\009\000\011\000\
    \015\000\021\000\028\000\031\000\032\000\033\000\034\000\036\000\
    \037\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec token lexbuf =
   __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 8 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
                  ( token lexbuf)
# 122 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 1 ->
# 9 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
      ( SEMICOLON )
# 127 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 2 ->
# 10 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
         ( TRUE )
# 132 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 3 ->
# 11 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
          ( FALSE )
# 137 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 4 ->
# 12 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
         ( SUCC )
# 142 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 5 ->
# 13 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
          ( PRED )
# 147 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 6 ->
# 14 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
           ( ISZERO )
# 152 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 7 ->
# 15 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
       ( IF )
# 157 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 8 ->
# 16 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
         ( THEN )
# 162 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 9 ->
# 17 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
         ( ELSE )
# 167 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 10 ->
let
# 18 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
                i
# 173 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 18 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
                  ( INTV (int_of_string i) )
# 177 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 11 ->
# 19 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
      ( LPAREN )
# 182 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 12 ->
# 20 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
      ( RPAREN )
# 187 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 13 ->
# 21 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
      ( EOF )
# 192 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | 14 ->
# 22 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.mll"
    ( raise (Error (Printf.sprintf "At offset %d: unexpected character.\n" (Lexing.lexeme_start lexbuf))) )
# 197 "/home/juan/Programacion/Reason/tapl-reason-react/src/arith/arithLexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_token_rec lexbuf __ocaml_lex_state

;;

