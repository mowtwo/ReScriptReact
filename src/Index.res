let root = ReactDOM.querySelector("#root")
switch root {
| Some(_root) => ReactDOM.render(<div> <App /> </div>, _root)
| _ => Js.Console.error("not find #root")
}
