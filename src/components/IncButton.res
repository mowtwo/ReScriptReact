@react.component
let make = (~onClick: unit => unit, ~children: React.element) => {
  <div className={IncButtonStyle.incButton} onClick={_ => onClick()}> children </div>
}
