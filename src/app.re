open Utils;

requireCSS("./app.css");

[@bs.module] external logo : string = "./logo.svg";

let component = ReasonReact.statelessComponent("App");

let make = (~message, _children) => {
  ...component,
  render: _self =>
    <div className="App">
      <div className="App-header">
        <img src=logo className="App-logo" alt="logo" />
        <h2> (str(message)) </h2>
      </div>
      <p className="App-intro">
        <code> (str("t ::= ")) </code>
        <code> (str("    0")) </code>
        <code> (str("    |  if <t> then <t> else <t>")) </code>
        <code> (str("    | iszero <t>")) </code>
        <code> (str("    | pred <t>")) </code>
        <code> (str("    | succ <t>")) </code>
      </p>
      <MiniRepl />
    </div>
};
/* Examples for testing

   true;
   if false then true else false;

   0;
   succ (pred 0);
   iszero (pred (succ (succ 0)));

   */