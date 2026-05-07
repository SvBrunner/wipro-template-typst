# wipro-template-typst

This is a Typst template for HSLU Informatik Wirtschaftsprojekte and Bachelorarbeiten.

## Templates

Import the templates from `template/basic-wipro.typ`:

```typst
#import "template/basic-wipro.typ": *
```

Use `basic-wipro(...)` for a Wirtschaftsprojekt:

```typst
#show: doc => basic-wipro(
  logo: image("images/logo.svg", width: 80%),
  title: "My title",
  students: ("Max Muster", "Martina Muster"),
  year: "2026",
  institution: "HSLU",
  study-program: "BSc Informatik",
  supervisor: "Betreuungsperson",
  expert: "Expertenperson",
  client: "Auftraggeberin / Auftraggeber",
  public: true,
  secret: false,
  abstract,
  doc,
)
```

Use `basic-bachelor(...)` for a Bachelorarbeit. It uses the same arguments and adds optional acknowledgements:

```typst
#show: doc => basic-bachelor(
  logo: image("images/logo.svg", width: 80%),
  title: "My bachelor thesis",
  students: ("Max Muster",),
  year: "2026",
  institution: "HSLU",
  study-program: "BSc Informatik",
  supervisor: "Betreuungsperson",
  expert: "Expertenperson",
  client: "Auftraggeberin / Auftraggeber",
  public: true,
  secret: false,
  acknowledgements: [
    Vielen Dank an ...
  ],
  abstract,
  doc,
)
```

The generated declaration page creates one signature line per student. For Bachelorarbeiten, the optional Danksagung is placed between the eidesstattliche Erklärung and the geistiges Eigentum section.

This repository is in no way affiliated with any institutions. Please check with your supervisor if this template meets your requirements.
