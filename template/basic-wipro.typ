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
  abstract,
  doc,
  bib: "",
  abbr: "",
  imgol: "",
  tabol: "",
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
  outline(depth: 3)

  set heading(numbering: "1.1.1", outlined: true)
  show heading: it => {
    if (it.level >= 3) {
      block(it.body)
    } else {
      block(counter(heading).display() + " " + it.body)
    }
  }
  pagebreak()

  let out = doc 
  if (abbr != "" or bib != "" or imgol != "" or tabol != "") {out += pagebreak() + abbr + bib + imgol + tabol}
  show: out
}
