let str = ReasonReact.stringToElement;

[@bs.val] external requireCSS : string => unit = "require";

let object_of_event = evt =>
  evt |> ReactEventRe.Form.target |> ReactDOMRe.domElementToObj;

let valueFromEvent = evt : string =>
  evt |> object_of_event |> (obj => obj##value);

let parseAndEval = userInput =>
  switch (Main.parseString(userInput)) {
  | None => "Parse Error!!!"
  | Some(result) => result |> Core.eval |> Syntax.show
  };