open Utils;

requireCSS("./miniRepl.css");

type state = string;

type action =
  | Submit(string);

let component = ReasonReact.reducerComponent("MiniREPL");

let make = _children => {
  ...component,
  initialState: () => "",
  reducer: (action, _) =>
    switch action {
    | Submit(program) => ReasonReact.Update(parseAndEval(program))
    },
  render: self =>
    <div className="REPL">
      <p className="note"> (str("Ingrese su programa")) </p>
      <Input onSubmit=(self.reduce(userInput => Submit(userInput))) />
      <p className="prompt">
        (str({js|▶|js} ++ "  "))
        <code className="result"> (str(self.state)) </code>
      </p>
    </div>
};