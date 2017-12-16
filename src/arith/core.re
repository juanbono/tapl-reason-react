
open Syntax;

/* ------------------------   EVALUATION  ------------------------ */
exception NoRuleApplies;

let rec isnumericval = t =>
  switch t {
  | TmZero => true
  | TmSucc(t1) => isnumericval(t1)
  | _ => false
  };

let rec isval = t =>
  switch t {
  | TmTrue => true
  | TmFalse => true
  | t when isnumericval(t) => true
  | _ => false
  };

let rec eval1 = t =>
  switch t {
  | TmIf(TmTrue, t2, t3) => t2
  | TmIf(TmFalse, t2, t3) => t3
  | TmIf(t1, t2, t3) =>
    let t1' = eval1(t1);
    TmIf(t1', t2, t3);
  | TmSucc(t1) =>
    let t1' = eval1(t1);
    TmSucc(t1');
  | TmPred(TmZero) => TmZero
  | TmPred(TmSucc(nv1)) when isnumericval(nv1) => nv1
  | TmPred(t1) =>
    let t1' = eval1(t1);
    TmPred(t1');
  | TmIsZero(TmZero) => TmTrue
  | TmIsZero(TmSucc(nv1)) when isnumericval(nv1) => TmFalse
  | TmIsZero(t1) =>
    let t1' = eval1(t1);
    TmIsZero(t1');
  | _ => raise(NoRuleApplies)
  };

let rec eval = t =>
  switch (eval1(t)) {
  | exception NoRuleApplies => t
  | t' => eval(t')
  };