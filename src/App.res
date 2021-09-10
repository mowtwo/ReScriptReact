@react.component
let make = () => {
  let (count, setCount) = React.useState(_ => 0)
  let onInc = _ => setCount(v => v + 1)
  <div>
    {React.int(count)} <br /> <IncButton onClick={_ => onInc()}> {React.string("inc")} </IncButton>
  </div>
}
