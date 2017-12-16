
type term =
  | TmTrue
  | TmFalse
  | TmIf(term, term, term)
  | TmZero
  | TmSucc(term)
  | TmPred(term)
  | TmIsZero(term);

let rec show = t =>
  switch t {
  | TmTrue => "true"
  | TmFalse => "false"
  | TmIf(cond, rtrue, rfalse) =>
    "if ("
    ++ show(cond)
    ++ ") then ("
    ++ show(rtrue)
    ++ ") else ("
    ++ show(rfalse)
    ++ ")"
  | TmZero => "0"
  | TmSucc(t') => "succ(" ++ show(t') ++ ")"
  | TmPred(t') => "pred(" ++ show(t') ++ ")"
  | TmIsZero(t') => "isZero(" ++ show(t') ++ ")"
  };

type command =
  | Eval(term);

let term_of_command = cmd =>
  switch cmd {
  | Eval(t) => t
  };