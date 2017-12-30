open Utils;

requireCSS("./app.css");

let component = ReasonReact.statelessComponent("App");

let make = _children => {
  ...component,
  render: _self =>
    <div className="app-container">
      <div className="app-header">
        <h1> (str("Types and Programming Languages")) </h1>
      </div>
      <div className="app-column1">
        <Repl
          className="repl"
          languagePrompt="Arith>"
          commands=[("saludar", () => "hola")]
        />
        <div className="column1-row2">
          (
            Utils.str(
              "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, cum! Illo, repellat earum minus, provident nemo, quas eos expedita nesciunt ratione voluptate consectetur aliquid. Quidem quam modi, delectus nihil aspernatur consectetur culpa odio dolore, molestiae porro facere impedit, voluptatibus voluptates excepturi officiis quaerat in voluptatem? Beatae doloremque fugit facilis soluta.\nLorem ipsum dolor sit amet consectetur adipisicing elit. Ratione, cum! Illo, repellat earum minus, provident nemo, quas eos expedita nesciunt ratione voluptate consectetur aliquid. Quidem quam modi, delectus nihil aspernatur consectetur culpa odio dolore, molestiae porro facere impedit, voluptatibus voluptates excepturi officiis quaerat in voluptatem? Beatae doloremque fugit facilis soluta.\n        "
            )
          )
        </div>
      </div>
      <div className="app-column2"> <MiniRepl /> </div>
    </div>
};