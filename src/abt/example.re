open Abt;

/* Example language (STLC) with a bidirectional typechecker */
module Lambda = {
  type tp =
    | Base
    | Arrow(tp, tp);
  type t('a) =
    | Lam('a)
    | App('a, 'a)
    | Let('a, 'a)
    | Annot(tp, 'a);
  let map = f =>
    fun
    | Lam(x) => Lam(f(x))
    | App(x, y) => App(f(x), f(y))
    | Let(x, y) => Let(f(x), f(y))
    | Annot(t, x) => Annot(t, f(x));
  let join = m =>
    fun
    | Lam(x) => x
    | App(x, y) => m.join(x, y)
    | Let(x, y) => m.join(x, y)
    | Annot(_, x) => x;
};

module Syntax = Abt(Lambda);

module Bidir = {
  open Lambda;
  open Syntax;
  type ctx = list((var, tp));
  let is_synth =
    fun
    | Tm(Lam(_))
    | Tm(Let(_, _)) => false
    | _ => true;
  let is_check = e => ! is_synth(e);
  let unabs = e =>
    switch (out(e)) {
    | Abs(x, e) => (x, e)
    | _ => assert false
    };
  let rec check = (ctx, e, tp) =>
    switch (out(e), tp) {
    | (Tm(Lam(t)), Arrow(tp1, tp')) =>
      let (x, e') = unabs(t);
      check([(x, tp1), ...ctx], e', tp');
    | (Tm(Lam(_)), _) => failwith("expected arrow type")
    | (Tm(Let(e', t)), _) =>
      let (x, e'') = unabs(t);
      let tp1 = synth(ctx, e');
      check([(x, tp1), ...ctx], e'', tp);
    | (body, _) when is_synth(body) =>
      if (tp === synth(ctx, e)) {
        ();
      } else {
        failwith("Type mismatch");
      }
    | _ => assert false
    }
  and synth = (ctx, e) =>
    switch (out(e)) {
    | Var(x) =>
      try (List.assoc(x, ctx)) {
      | Not_found => failwith("unbound variable")
      }
    | Tm(Annot(tp, e)) =>
      let () = check(ctx, e, tp);
      tp;
    | Tm(App(f, e)) =>
      switch (synth(ctx, f)) {
      | Arrow(tp, tp') =>
        let () = check(ctx, e, tp);
        tp';
      | _ => failwith("Applying a non-function!")
      }
    | body when is_check(body) =>
      failwith("Cannot synthesize type for checking term")
    | _ => assert false
    };
};