#import "title-page.typ": title-page
#let basic-wipro(
  logo: image,
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
  scanned-signature-page: none,
  abstract,
  doc,
  bib: "",
  abbr: "",
  imgol: "",
  tabol: "",
  ai: "",
) = {
  set page(numbering: none)
  set heading(outlined: false)
  title-page(
    logo: logo,
    title: title,
    students: students,
    year: year,
    institution: institution,
    study-program: study-program,
    supervisor: supervisor,
    expert: expert,
    client: client,
    public: public,
    secret: secret,
    scanned-signature-page: scanned-signature-page,
  )
  counter(page).update(1)


  set page(
    footer: context [
      #align(
        right + horizon,
        counter(page).display(
          "1 von 1",
          both: true,
        ),
      )

    ],
  )
  abstract
  pagebreak()
  outline(title: "Inhaltsverzeichnis", depth: 3)

  set heading(numbering: "1.1.1", outlined: true)
  show heading: it => {
    if (it.level >= 4) {
      block(it.body)
    } else {
      block(counter(heading).display() + " " + it.body)
    }
  }

  doc

  if (abbr != "" or bib != "" or imgol != "" or tabol != "") {
    set heading(numbering: none)
    show heading: it => {
      block(it.body)
    }
    if abbr != "" {
      pagebreak()
      abbr
    }
    if bib != "" {
      pagebreak()
      bib
    }
    if imgol != "" {
      pagebreak()
      imgol
    }
    if tabol != "" {
      pagebreak()
      tabol
    }
    if ai != "" {
      pagebreak()
      ai
    }
  }
}
