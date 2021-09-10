open MaterialUi
let appStyle = ReactDOM.Style.make(~width="100vw", ())
let typStyle = ReactDOM.Style.make(~backgroundColor="#cfe8fc", ~height="100vh", ())
@react.component
let make = () =>
  <div style=appStyle>
    <CssBaseline /> <Container fixed=true> <Typography style=typStyle /> </Container>
  </div>
