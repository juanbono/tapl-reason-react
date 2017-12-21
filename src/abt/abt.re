/* FUNCTOR, posee un tipo contenedor y una operacion que  permite mapear sobre los contenedores*/
module type FUNCTOR = {type t('a); let map: ('a => 'b, t('a)) => t('b);};

/* Monoide, posee un elemento neutro (unit) y una operacion join */
type monoid('a) = {
  unit: 'a,
  join: ('a, 'a) => 'a
};

type var = string;

/* Conjunto de variables libres */
module V =
  Set.Make(
    {
      type t = var;
      let compare = compare;
    }
  );

module type ABT = {
  type signature('a);
  type f('a) =
    | Var(var)
    | Abs(var, 'a)
    | Tm(signature('a));
  let map: ('a => 'b, f('a)) => f('b);
  type t;
  let into: f(t) => t;
  let out: t => f(t);
  let freevars: t => V.t;
  let var: V.elt => t;
  let abs: ((V.elt, t)) => t;
  let tm: signature(t) => t;
  let subst: (t, var, t) => t;
};

/* Una SIGNATURE es un FUNCTOR que ademas puede recolectar valores monoidales. */
module type SIGNATURE = {
  include FUNCTOR;
  let join: (monoid('a), t('a)) => 'a;
};

/* the ABT functor takes a "signature" as an argument.
   A signature is basically a datatype containing of all the term formers in the language
   -- eg, for lambda calculus with booleans, it would be lambdas, applications, boolean constants,
   and conditionals.
   The ABT module then gives you a recursive type with those term formers, plus variable references
   and variable abstractions. We have to write Tm because of the way ML datatypes work
   -- ideally we'd like to say that Tm has all the constructors of the signature plus variables
   and abstractions, but that can't be expressed in plain ML.
   So we wrap all of F.t's constructors in a Tm.
   */
module Abt = (F: SIGNATURE) : (ABT with type signature('a) := F.t('a)) => {
  type f('a) =
    | Var(var)
    | Abs(var, 'a)
    | Tm(F.t('a));
  let map = f =>
    fun
    | Var(x) => Var(x)
    | Abs(x, e) => Abs(x, f(e))
    | Tm(t) => Tm(F.map(f, t));
  type t =
    | In(V.t, f(t));
  let freevars = (In(vs, _)) => vs;
  let out = (In(_, t)) => t;
  let m = {unit: V.empty, join: V.union};
  let var = x => In(V.singleton(x), Var(x));
  let abs = ((z, e)) => In(V.remove(z, freevars(e)), Abs(z, e));
  let tm = t => In(F.join(m, F.map(freevars, t)), Tm(t));
  let into =
    fun
    | Var(x) => var(x)
    | Abs(x, e) => abs((x, e))
    | Tm(t) => tm(t);
  let rec fresh = (vs, v) => V.mem(v, vs) ? fresh(vs, v ++ "'") : v;
  let rec rename = (x, y, In(fvs, t)) =>
    switch t {
    | Var(z) => x == z ? var(y) : var(z)
    | Abs(z, e) => x == z ? abs((z, e)) : abs((z, rename(x, y, e)))
    | Tm(v) => tm(F.map(rename(x, y), v))
    };
  let rec subst = (t, x, body) =>
    switch (out(body)) {
    | Var(z) when x == z => t
    | Var(z) => var(z)
    | Abs(x, e) =>
      let x' = fresh(V.union(freevars(t), freevars(body)), x);
      let e' = subst(t, x, rename(x, x', e));
      abs((x', e'));
    | Tm(body) => tm(F.map(subst(t, x), body))
    };
};