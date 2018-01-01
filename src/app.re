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
          <code> (str("t ::= ")) </code>
          <br />
          <center> <code> (str("    0")) </code> </center>
          <br />
          <center>
            <code> (str("    |  if <t> then <t> else <t>")) </code>
          </center>
          <br />
          <center> <code> (str("    | iszero <t>")) </code> </center>
          <br />
          <center> <code> (str("    | pred <t>")) </code> </center>
          <br />
          <center> <code> (str("    | succ <t>")) </code> </center>
          <br />
        </div>
      </div>
      <div className="app-column2"> <MiniRepl /> </div>
    </div>
};