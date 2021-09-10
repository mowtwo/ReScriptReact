// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Core from "@material-ui/core";

var appStyle = {
  width: "100vw"
};

var typStyle = {
  backgroundColor: "#cfe8fc",
  height: "100vh"
};

function App(Props) {
  return React.createElement("div", {
              style: appStyle
            }, React.createElement(Core.CssBaseline, {}), React.createElement(Core.Container, {
                  children: React.createElement(Core.Typography, {
                        style: typStyle
                      }),
                  fixed: true
                }));
}

var make = App;

export {
  appStyle ,
  typStyle ,
  make ,
  
}
/* react Not a pure module */
