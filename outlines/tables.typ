#set heading(numbering: none)
#show heading: it => {
    block(it.body)
}
= Tableoutline
#outline(
  title: none,
  target: figure.where(kind: table),
)