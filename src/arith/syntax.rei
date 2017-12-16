/* module Syntax: syntax trees and associated support functions */

/* Data type definitions */
type term =
  | TmTrue
  | TmFalse
  | TmIf(term, term, term)
  | TmZero
  | TmSucc(term)
  | TmPred(term)
  | TmIsZero(term);

let show: term => string;

type command =
  | Eval(term);

let term_of_command: command => term;
