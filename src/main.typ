#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: resume.with(
  author: (
    name: "Zakhary Kaplan",
    email: "me@zakhary.dev",
    company: "Altera",
    location: "Kingston, ON",
    phone: "+1.416.602.2925",
  ),
  social: (
    web: link(
      "https://zakhary.dev",
      media(icon: "link")[zakhary.dev]
    ),
    lin: link(
      "https://linkedin.com/in/zakhary",
      media(icon: "linkedin")[in/zakhary]
    ),
    src: link(
      "https://github.com/kaplanz",
      media(icon: "github")[kaplanz]
    ),
  ),
)

= Education

#experience(
  what:  "BASc in Computer Engineering",
  where: "University of Toronto",
  when:  (
    start: datetime(year: 2018, month: 09, day: 01),
    until: datetime(year: 2023, month: 06, day: 20),
  ),
)[
  - Obtained 3.89/4.0 GPA. Course average 88%.
  - Conferred _High Honours_ upon graduation; _Dean's List Scholar_ for all
    semesters.
  - Completed certificates in _Artificial Intelligence_ and _Engineering
    Business_.
]

= Work

#experience(
  what:  "FPGA Architect",
  where: [Altera _(formerly Intel)_],
  when:  (
    start: datetime(year: 2023, month: 07, day: 04),
    until: none,
  ),
)[
  - Designed workflow and toolkit for analyzing fabric routing delays in SPICE
    using raw netlist data at transistor level.
  - Modelled FPGA fabric clock-tree self-balancing delay blocks; workflow tracks
    nightly regressions in RTL.
  - Explored feasibility of proposed changes to routing fabric informed by
    modelling performance impact.
]

#experience(
  what:  "Teaching Assistant",
  where: "University of Toronto",
  when:  (
    start: datetime(year: 2022, month: 08, day: 01),
    until: datetime(year: 2023, month: 05, day: 30),
  ),
)[
  - ECE243 _Computer Organization_: ARM v7 assembly for Cortex A9, Verilog
    soft-core CPUs, embedded programming.
  - ECE244 _Programming Fundamentals_:  C++ language, object-oriented
    programming, data structures, and complexity.
]

#experience(
  what:  "Computer Architect",
  where: "Qualcomm",
  when:  (
    start: datetime(year: 2021, month: 05, day: 10),
    until: datetime(year: 2022, month: 08, day: 26),
  ),
)[
  - Created transaction level model for cache prefetcher used by IPs within
    Snapdragon’s digital signal processor (DSP).
  - Worked on architecture specification for multi-level cache system informed
    by data-driven simulation results.
  - Lead exploration of high-level synthesis (HLS) workflows within architecture
    team.
]

#experience(
  what:  "Software Developer",
  where: "Geomechanica Inc.",
  when:  (
    start: datetime(year: 2020, month: 05, day: 01),
    until: datetime(year: 2020, month: 08, day: 31),
  ),
)[
  - Developed and tested geomechanical simulation features in C++/Qt, including:
    CAD editor, rendering, and licences.
]

#experience(
  what:  "ML/AI Researcher",
  where: "University of Toronto",
  when:  (
    start: datetime(year: 2019, month: 05, day: 01),
    until: datetime(year: 2019, month: 08, day: 31),
  ),
)[
  - Applied ML to extract topics from tweets using NLP sentiment analysis with
    TensorFlow on BERT and XLNet.
  - Researched distributed ML via federated learning in PyTorch; coauthored IEEE
    INFOCOM paper on findings.
]

= Publications

#paper(
  title: [
    Optimizing Federated Learning on Non-IID Data with Reinforcement Learning
  ],
  authors: [Hao Wang, #underline[Zakhary Kaplan], Di Niu, Baochun Li],
  conference: "IEEE INFOCOM 2020",
)

= Projects

#project(
  name:  "Game Boy Emulator",
  page: "https://git.zakhary.dev/rugby",
  date: datetime(year: 2022, month: 01, day: 22),
)[
  Cycle-accurate emulator of the DMG-01 Game Boy written in Rust, including SM83
  (Z80-like) CPU, graphics, and sound. Includes native (macOS/Linux/Windows),
  iOS, and #link("https://rugby.zakhary.dev")[web] frontends. Over 30kloc.
]

#project(
  name:  "Dynamic DNS Client",
  page: "https://git.zakhary.dev/dynasty",
  date: datetime(year: 2019, month: 05, day: 13),
)[
  Daemon for periodically querying and updating DNS server records.
]

#project(
  name:  "Dotfiles",
  page: "https://git.zakhary.dev/dotfiles",
  date: datetime(year: 2019, month: 05, day: 13),
)[
  Workspace configuration with portable Bash installer script; supports `nvim`,
  `tmux`, `zsh`, and more.
]

#project(
  name:  "16-bit ISA",
  page:  "https://git.zakhary.dev/kap-16",
  date: datetime(year: 2021, month: 07, day: 19),
)[
  Designed 16-bit ISA for theoretical CPU; used Huffman coding to improve
  instruction density.
]

#project(
  name:  "16-bit CPU",
  date: datetime(year: 2020, month: 01, day: 16),
)[
  Verilog implementation with distinct control/data paths; compiled for DE1-SoC
  FPGA board.
]

#project(
  name:  "Mapper",
  date: datetime(year: 2020, month: 01, day: 20),
)[
  NP-complete graph problem solver (travelling salesman) using meta-heuristics
  and simulated annealing.
]

= Relevant Courses

  #let course(name, mark) = box[
    #name~#text(size: .75em)[(#mark)]
  ]

- *Software*: #(
    course("Algorithms & Data Structures", "A+"),
    course("Operating Systems", "A+"),
    course("Compilers", "A+"),
    course("Networks", "A-"),
    course("Security", "A+"),
  ).join(", ").
- *Hardware*: #(
    course("Digital Systems", "A+"),
    course("Computer Organization", "A+"),
    course("Computer Architecture", "A-"),
    course("Digital Electronics", "A+"),
  ).join(", ").
- *Engineering*: #(
    course("Machine Learning", "A"),
    course("Signals & Systems", "A"),
    course("Control Theory", "A-"),
).join(", ").
- *Mathematics*: #(
    course("Linear Algebra", "A+"),
    course("Complex Analysis", "A+"),
    course("Multivariate Calculus", "A"),
    course("Probability", "A"),
  ).join(", ").

= Selected Skills

#grid(columns: (1fr, 1fr), gutter: 1em,
  block[
    *Languages*: #(
      "Rust",
      "Python",
      "C",
      "C++",
      "Assembly",
      "Verilog",
    ).join(", ").
  ],
  block[
    *Toolchain*: #(
      "macOS/Linux",
      "SSH",
      "CLI",
    ).join(", ").
  ],
)
