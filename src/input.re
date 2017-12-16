type state = string;

let component = ReasonReact.reducerComponent("Input");

let make = (~onSubmit, _) => {
  ...component,
  initialState: () => "",
  reducer: (newText, _text) => ReasonReact.Update(newText),
  render: self =>
    <input
      value=self.state
      _type="text"
      onChange=self.reduce(Utils.valueFromEvent)
      onKeyPress=(
        evt =>
          if (ReactEventRe.Keyboard.key(evt) == "Enter") {
            onSubmit(self.state);
            self.reduce(() => "", ()); /* Clean the REPL after submit */
          }
      )
    />
};