open Utils;

[%bs.raw {|require('./miniRepl.css')|}];

type state = {userInput: string};

type action =
  | SubmitProgram(string);

let component = ReasonReact.reducerComponent("MiniREPL");

let make = _children => {
  ...component,
  initialState: () => {userInput: ""},
  reducer: (action, _) =>
    switch action {
    | SubmitProgram(programString) =>
      ReasonReact.Update({userInput: parseAndEval(programString)})
    },
  render: self =>
    <div className="REPL">
      <p className="note">
        (str("Ingrese su programa, seguido del caracter ';'"))
      </p>
      <Input onSubmit=(self.reduce(userInput => SubmitProgram(userInput))) />
      <p className="prompt">
        (str({js|▶|js} ++ "  "))
        <code className="result"> (str(self.state.userInput)) </code>
      </p>
    </div>
};

