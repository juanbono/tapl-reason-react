let str = ReasonReact.stringToElement;

[@bs.val] external requireCSS : string => unit = "require";

[@bs.module "./registerServiceWorker"]
external register_service_worker : unit => unit = "default";

let valueFromEvent = evt : string => (
                                       evt
                                       |> ReactEventRe.Form.target
                                       |> ReactDOMRe.domElementToObj
                                     )##value;

let parseAndEval = userInput =>
  switch (Main.parseString(userInput)) {
  | None => "Parse Error!!!"
  | Some(result) =>
    result
    |> List.hd
    |> (cmd => cmd |> Syntax.term_of_command |> Core.eval)
    |> Syntax.show
  };