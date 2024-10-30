// Formats a media item with an icon prefix.
#let media(icon: str, content) = {
  let item = it => box(height: 1em, align(horizon, it)) // inline alignment
  box(pad(x: .25em, {
    // Show the icon...
    item(image(height: .8em, "img/media/" + icon + ".svg"))
    h(.25em)
    // ... then content
    item(content)
  }))
}

// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let resume(author: (), social: (), body) = {
  // Set the document's basic properties
  set document(author: author.name, title: [#author.name's Resume])
  set page(
    paper: "us-letter",
    margin: (left: 15mm, right: 15mm, top: 15mm, bottom: 15mm),
  )
  set text(font: "Libertinus Serif", lang: "en")

  // Override commonly used style formats.
  show link: underline

  show heading: it => {
    set block(spacing: .65em)
    if it.level == 1 {
      // Use smallcaps on top-level headings
      block[
        #text(weight: "regular", smallcaps(it.body))
        #box(width: 1fr, stroke: (bottom: 0.5pt), none)
      ]
    } else if it.level == 2 {
      // Use the default formatting at level 2
      it
    }
    else if it.level > 2 {
      // Set run-in subheadings, starting at level 3
      parbreak()
      text(11pt, style: "italic", weight: "regular", it.body + ".")
    }
  }

  // Author heading
  align(center)[
    #block(text(weight: 700, 2.25em, author.name))
  ]

  // Geography section
  align(center)[
    #media(icon: "building", author.affiliation)
    #box(height: 1em, align(horizon, sym.dot.c))
    #media(icon: "location", author.location)
  ]

  // Contact information
  let contact = (
    link(
      "tel:" + author.phone.replace(regex("[ ().-]"), ""),
      media(icon: "phone", author.phone),
    ),
    link(
      "mailto:" + author.email,
      media(icon: "envelope", author.email),
    ),
    ..social.values()
  )
  align(center)[
    #contact.join(
      box(height: 1em, align(horizon, sym.bar))
    )
  ]

  // Main body.
  set par(justify: true)

  body
}

// Defines an experience entry.
#let experience(
  what:  str,
  where: str,
  when:  (from: datetime, to: datetime),
  fmt: "[month repr:short] [year]",
  about,
) = {
  // Header
  block[
    // Title
    *#what* | #where
    #h(1fr)
    // Date
    #emph[
      #let from = when.from.display(fmt)
      #if when.to != none {
        let to = when.to.display(fmt)
        if from != to [ #from -- #to ]
        else [ #from ]
      } else [ #from -- #emph[Present] ]
    ]
  ]
  // Body
  about
}

// Defines a publication entry.
#let paper(
  title:  str,
  authors: str,
  conference:  str,
) = {
  list[
    // Title
    #text(weight: "semibold")[#title]
    #h(1fr)
    // Conference
    #emph(conference)
    #linebreak()
    // Authors
    #authors.
  ]
}

// Defines a coursework entry.
#let course(
  code: str,
  name: str,
  mark: str,
  info
) = {
  // Header
  block[
    #code: *#name*
    #h(1fr)
    #mark
  ]
  // Body
  info
}
