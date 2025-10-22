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
  doc,
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


  set heading(numbering: "1.1.1", outlined: true)
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

  counter(page).update(1)
  outline()
  pagebreak()
  show: doc
}
