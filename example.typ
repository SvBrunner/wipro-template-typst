#import "template/basic-wipro.typ": basic-wipro

#let abstract = [
  HEllo world
]

#show: doc => basic-wipro(
  logo: image("images/logo.svg", width: 80%),
  title: "My title",
  students: (
    "Max Muster",
    "Martina Muster",
  ),
  year: "2025",
  institution: "HSLU",
  study-program: "BSc Informatik",
  supervisor: "Mr Bossman",
  expert: "Dr. Prof",
  client: "Client",
  public: true,
  secret: false,
  abstract,
  doc,
)
= First
#lorem(150)

== Second
#lorem(150)

=== Third
#lorem(150)

==== Fourth

#lorem(150)
= A
#lorem(150)

== B
#lorem(150)

=== C
#lorem(150)

==== D

#lorem(150)

