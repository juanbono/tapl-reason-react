import React from "react";
import Terminal from "terminal-in-react";

export default class ReplComponent extends React.Component {
  render() {
    return (
      <div className={this.props.className}>
        <Terminal
          color={this.props.color}
          backgroundColor={this.props.backgroundColor}
          promptSymbol={this.props.languagePrompt}
          allowTabs={this.props.allowTabs}
          hideTopBar={this.props.hideTopBar}
          style={this.props.styles}
          commands={this.props.commands}
          descriptions={this.props.descriptions}
        />
      </div>
    );
  }
}
