[@bs.module "./replComponent"]
external reactClass : ReasonReact.reactClass = "default";

let make =
    (
      ~className="", /* Agregar props para pasar el parser */
      ~styles=ReactDOMRe.Style.make(),
      ~commands: list((string, 'a => 'b))=[],
      ~languagePrompt=">",
      _children
    ) =>
  ReasonReact.wrapJsForReason(
    ~reactClass,
    ~props={
      "className": className,
      "styles": styles,
      "commands": Js.Dict.fromList(commands),
      "languagePrompt": languagePrompt
    },
    ()
  );