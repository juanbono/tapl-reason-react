
let parseString = str => {
  let lexbuf = Lexing.from_string(str);
  let result =
    switch (ArithParser.toplevel(ArithLexer.token, lexbuf)) {
    | exception ArithParser.Error => None
    | t => Some(t)
    };
  Parsing.clear_parser();
  result;
};
/*
 let rec process_command = cmd =>
   switch cmd {
   | Eval(fi, t) =>
     let t' = eval(t);
     printtm_ATerm(true, t');
     force_newline();
     ();
   };
 */