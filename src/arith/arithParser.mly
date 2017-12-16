(*
 *  Yacc grammar for the parser.  The files parser.mli and parser.ml
 *  are generated automatically from parser.mly.
 *)

%{
open Syntax
%}

/* Keyword tokens */
%token  IF
%token  THEN
%token  ELSE
%token  TRUE
%token  FALSE
%token  SUCC
%token  PRED
%token  ISZERO

/* Identifier and constant value tokens */
%token <int> INTV

/* Symbolic tokens */
%token EOF
%token LPAREN
%token RPAREN
%token SEMICOLON

/* ---------------------------------------------------------------------- */
/* The starting production of the generated parser is the syntactic class
   toplevel. The type that is returned when a toplevel is recognized is
   Syntax.command list.
*/

%start toplevel
%type < Syntax.command list> toplevel
%%

/* ---------------------------------------------------------------------- */
/* Main body of the parser definition */

/* The top level of a file is a sequence of commands*/
toplevel :
  | EOF
      { [] }
  | cmd = command cmds = toplevel
      { cmd::cmds }

/* A top-level command */
command :
  | t = term
      { Eval t }

term :
  | a = appTerm
      { a }
  | IF cond = term THEN e1 = term ELSE e2 = term
      { TmIf (cond, e1, e2) }

appTerm :
  | t = aTerm
      { t }
  | SUCC t = aTerm
      { TmSucc t }
  | PRED t = aTerm
      { TmPred t }
  | ISZERO t = aTerm
      { TmIsZero t }

/* Atomic terms are ones that never require extra parentheses */
aTerm :
  | LPAREN t = term RPAREN
      { t }
  | TRUE
      { TmTrue }
  | FALSE
      { TmFalse }
  | number = INTV
      { let rec toPeanoNatural n =
        match n with
        | 0 -> TmZero
        | n -> TmSucc(toPeanoNatural (n-1))
        in toPeanoNatural number
      }


