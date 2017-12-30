import React from "react";
import Terminal from "terminal-in-react";

export default class ReplComponent extends React.Component {
  render() {
    return (
      <div className={this.props.className}>
        <Terminal
          color="black"
          backgroundColor="rgb(251, 255, 192)"
          promptSymbol={this.props.languagePrompt}
          allowTabs={false}
          hideTopBar={true}
          style={this.props.styles}
          commands={this.props.commands}
          descriptions={{
            help: "shows the help message"
          }}
        />
      </div>
    );
  }
}
