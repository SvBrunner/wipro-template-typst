#let document-property(title: "", info: "") = {
    [/ #title\:: #info]
    v(.25em)
}

#let checkbox(info: "", checked: false) = {
    if checked [
       ☑
    ] else [
       ☐
    ]
    info
    linebreak()
}


#let signature() = {

    grid(
  columns: (auto, 1fr),
  gutter: 0.75em,
  align: bottom,
  [Ort / Datum, Unterschrift], line(length: 100%, stroke: 1pt + gray)
)
}


#let title-page(
  logo: "",
  title: "",
  students: (),
  year: "",
  institution: "",
  study-program: "",
  supervisor: "",
  expert: "",
  client: "",
  public: false,
  secret: false,
) = {


grid(
  columns: (1fr, 1fr),
  rows: (auto, auto),
  gutter: 3pt,
  image(logo, width: 80%),
  [],
  [],
  text(12pt, weight: "bold")[Informatik],
)
pagebreak()

text()[= Wirtschaftsprojekt an der Hochschule Luzern - Informatik]
v(1em)

document-property(title: "Titel", info: title)

for student in students [
  #document-property(title: "Student", info: student)
]

document-property(title: "Studiengang", info: study-program)

document-property(title: "Jahr", info: year)
document-property(title: "Betreuungsperson", info: supervisor)
document-property(title: "Expertenperson", info: expert)
document-property(title: "Auftraggeberin / Auftraggeber", info: client)

v(.5em)

text()[

*Codierung / Klassifizierung der Arbeit:*
]
linebreak()
checkbox(info: "Öffentlich (Normalfall)", checked: public)
checkbox(info: "Vertraulich", checked: secret)

v(2em)

text()[

*Eidesstattliche Erklärung*

Ich erkläre hiermit, dass ich/wir die vorliegende Arbeit selbständig und ohne unerlaubte fremde Hilfe angefertigt haben, alle verwendeten Quellen, Literatur und andere Hilfsmittel angegeben haben, wörtlich oder inhaltlich entnommene Stellen als solche kenntlich gemacht haben, das Vertraulichkeitsinteresse des Auftraggebers wahren und die Urheberrechtsbestimmungen der Hochschule Luzern respektieren werden.
]


signature()
signature()

v(1fr)


text(style: "italic")[
    Geistiges Eigentum gemäss der
    #link("https://srl.lu.ch/app/de/texts_of_law/521/versions/3884")[
  #underline()[ Studienordnung]
]
für die Ausbildung an der Hochschule Luzern, FH Zentralschweiz
]
}
