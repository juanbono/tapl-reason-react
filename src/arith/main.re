/* (Lexing.lexbuf) => ArithParser.token */
let tokenize = text =>
  switch (ArithLexer.token(text)) {
  | exception (ArithLexer.Error(_)) => None
  | t => Some(t)
  };

let parseString = str => {
  let lexbuf = Lexing.from_string(str);
  let result =
    switch (ArithParser.toplevel(ArithLexer.token, lexbuf)) {
    | exception (ArithLexer.Error(_)) => None
    | t => Some(t |> List.hd |> Syntax.term_of_command)
    };
  Parsing.clear_parser();
  result;
};