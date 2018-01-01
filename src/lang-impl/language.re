module type LANGUAGE = {
  type t;
  type context;
  let emptyContext: context;
  let name: string;
  let parseString: string => option(t);
  let show: t => string;
  let eval: (context, t) => t;
};

module UntypedArith: LANGUAGE = {
  type t = Syntax.term;
  type context = unit;
  let emptyContext = ();
  let name = "Arith";
  let parseString = Main.parseString;
  let show = Syntax.show;
  let eval = (_, t) => Core.eval(t);
};

module MkREPL = (L: LANGUAGE) => {
  include L;
  module REPL = {};
};