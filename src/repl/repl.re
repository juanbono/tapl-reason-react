[@bs.module "./replComponent"]
external reactClass : ReasonReact.reactClass = "default";

let make =
    (
      ~className="",
      ~color="green",
      ~backgroundColor="black",
      ~allowTabs=false,
      ~hideTopBar=true,
      ~styles=ReactDOMRe.Style.make(),
      ~commands: list((string, 'a => 'b))=[],
      ~descriptions: list((string, string))=[],
      ~languagePrompt=">",
      _children
    ) =>
  ReasonReact.wrapJsForReason(
    ~reactClass,
    ~props={
      "className": className,
      "color": color,
      "backgroundColor": backgroundColor,
      "allowTabs": Js.Boolean.to_js_boolean(allowTabs),
      "hideTopBar": Js.Boolean.to_js_boolean(hideTopBar),
      "styles": styles,
      "commands": Js.Dict.fromList(commands),
      "descriptions": Js.Dict.fromList(descriptions),
      "languagePrompt": languagePrompt
    },
    ()
  );