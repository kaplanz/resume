// Formats a media item with an icon prefix.
#let media(icon: "unknown", content) = {
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
  // Check if compile features are enabled
  let enabled = key => (author, sys.inputs).all(
    dict => dict.at(key, default: "").len() > 0
  )

  // Set the document's basic properties
  set document(author: author.name, title: [#author.name's Resume])
  set page(
    paper: "us-letter",
    margin: (left: 15mm, right: 15mm, top: 15mm, bottom: 15mm),
  )
  set text(font: "Libertinus Serif", lang: "en")

  // Override commonly used style formats
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
  if enabled("details") {
    align(center)[
      #media(icon: "building", author.company)
      #box(height: 1em, align(horizon, sym.dot.c))
      #media(icon: "location", author.location)
    ]
  }

  // Contact information
  let contact = (
    if enabled("phone") {
      link(
        "tel:" + author.phone.replace(regex("[ ().-]"), ""),
        media(icon: "phone", author.phone),
      )
    },
    if enabled("email") {
        link(
        "mailto:" + author.email,
        media(icon: "envelope", author.email),
      )
    },
    ..social.values()
  )
  align(center)[
    #contact.filter(it => it != none).join(
      box(height: 1em, align(horizon, sym.bar))
    )
  ]

  // Main body.
  set par(justify: true)
  set block(spacing: .85em)

  body
}

// Defines an experience entry.
#let experience(
  what: str,
  where: none,
  when: (start: none, until: none),
  dfmt: "[month repr:short] [year]",
  hide: bool,
  body,
) = {
  if hide != true {
    // Header
    block[
      // Title
      *#what* #if where != none [ | #where ]
      #h(1fr)
      // Date
      #emph[
        #let start = when.start.display(dfmt)
        #if when.until != none {
          let until = when.until.display(dfmt)
          if start != until [ #start -- #until ]
          else [ #start ]
        } else [ #start -- #emph[Present] ]
      ]
    ]
    // Content
    body
  }
}

// Defines a publication entry.
#let paper(
  title:  str,
  authors: str,
  conference:  str,
) = {
  list[
    #text(weight: "semibold")[#title]
    #h(1fr)
    #emph(conference)
    #linebreak()
    #emph(authors).
  ]
}

// Defines a project entry.
#let project(
  name: str,
  page: none,
  date: none,
  body,
) = {
  list[
    #text(weight: "semibold")[#name]: #body
    #h(1fr)
    #if page != none {
      box[#link(page, image(height: .8em, "img/media/link.svg"))]
    }
  ]
}

// Defines a coursework entry.
#let course(
  code: str,
  name: str,
  mark: str,
  body,
) = {
  block[
    #code: *#name*
    #h(1fr)
    #mark
  ]
  block[
    #body
  ]
}
