#set heading(numbering: none) // Disable numbering for this chapter
#show heading: it => {
    block(it.body)
}
// Bibliography
= Bibliography
#bibliography("bibliography.yaml", style: "ieee", title: none)
