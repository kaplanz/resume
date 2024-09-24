#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: resume.with(
  author: (
    name: "Zakhary Kaplan",
    email: "me@zakhary.dev",
    affiliation: "Intel Corporation",
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
  what:  "Bachelor of Applied Science",
  where: "University of Toronto",
  when:  (
    from: datetime(year: 2018, month: 09, day: 01),
    to:   datetime(year: 2023, month: 06, day: 20),
  ),
)[
  - Studied #emph[Computer Engineering] at the Faculty of Applied Science & Engineering.
  - Achieved #emph[Dean's List Scholar] for all semesters; confurred #emph[High Honours] upon graduation.
]

= Work

#experience(
  what:  "FPGA Architect",
  where: "Intel Corporation",
  when:  (
    from: datetime(year: 2018, month: 09, day: 01),
    to:   none,
  ),
)[
  - Working on Intel's next-generation FPGA's architectures.
]

#experience(
  what:  "Teaching Assistant",
  where: "University of Toronto",
  when:  (
    from: datetime(year: 2022, month: 08, day: 01),
    to:   datetime(year: 2023, month: 05, day: 30),
  ),
)[
  - Hired as an undergraduate teaching assistant for C++ project-based lab component of ECE244 (Programming Fundamentals), and for Verilog processor design and ARM assembly labs for ECE243 (Computer Organization).
]

#experience(
  what:  "Computer Architect",
  where: "Qualcomm",
  when:  (
    from: datetime(year: 2021, month: 05, day: 10),
    to:   datetime(year: 2022, month: 08, day: 26),
  ),
)[
  - Created transaction level model for cache architecture for use in several IPs within the Snapdragon’s digital signal processor (DSP).
  - Diagrammed architectures and prepared internal presentations justifying designs.
  - Lead exploration of high-level synthesis (HLS) workflows within architecture team.
]

#experience(
  what:  "Software Developer",
  where: "Geomechanica Inc.",
  when:  (
    from: datetime(year: 2020, month: 05, day: 01),
    to:   datetime(year: 2020, month: 08, day: 31),
  ),
)[
  - Developed and tested features for Irazu, a geomechanical simulation software.
  - Duties included implementation of CAD editor tools, visualization of simulation outputs, project file management, and licensing. Worked using Qt in C++.
]

#experience(
  what:  "Researcher",
  where: "University of Toronto",
  when:  (
    from: datetime(year: 2020, month: 05, day: 01),
    to:   datetime(year: 2020, month: 08, day: 31),
  ),
)[
  - Explored use of machine learning (ML) to extract topics from tweets via natural language processing with TensorFlow on BERT and XLNet models.
  - Researched improvements to distributed ML using federated learning (FL) on PyTorch. Developed framework for conducting experiments. Coauthor of paper presented at IEEE INFOCOM discussing findings of FL project.
]

= Projects

#experience(
  what:  "Nintendo Game Boy Emulator",
  where: "Rust",
  when:  (
    from: datetime(year: 2022, month: 01, day: 22),
    to:   none,
  ),
  fmt: "[year]",
)[
  - Implemented a complete hardware emulator of the DMG-01 Nintendo Game Boy, including a cycle accurate SM83 (Z80-derivative) CPU model.
]

#experience(
  what:  "Neovim Plugin",
  where: "Lua",
  when:  (
    from: datetime(year: 2022, month: 07, day: 20),
    to:   datetime(year: 2023, month: 01, day: 13),
  ),
  fmt: "[year]",
)[
  - Created and currently maintaining an open source Neovim plugin for managing trailing whitespace. Featured in #emph(link("https://dotfyle.com/this-week-in-neovim/2#new-nvim-retrail")[This Week In Neovim]) newsletter.
]

#experience(
  what:  "KAP-16 Instruction Set Architecture",
  where: "Specification",
  when:  (
    from: datetime(year: 2021, month: 07, day: 19),
    to:   datetime(year: 2022, month: 02, day: 13),
  ),
  fmt: "[year]",
)[
  - Designed a 16-bit instruction set architecture (ISA) for a custom CPU. Used Huffman codings when deciding encodings to innovatively improve instruction density.
]

#experience(
  what:  "Mapper",
  where: "C++, GTK",
  when:  (
    from: datetime(year: 2020, month: 01, day: 20),
    to:   datetime(year: 2020, month: 05, day: 18),
  ),
  fmt: "[year]",
)[
  -  Solved NP-complete graph problems (travelling salesman variant) using advanced meta-heuristic and simulated annealing iterative improvement algorithms.
]

#experience(
  what:  "16-bit CPU",
  where: "Verilog, DE1-SoC",
  when:  (
    from: datetime(year: 2020, month: 01, day: 16),
    to:   datetime(year: 2020, month: 01, day: 24),
  ),
  fmt: "[year]",
)[
  -  Implemented an 16-bit toy CPU in Verilog with clearly defined control and data paths. Compiled and tested on DE1-SoC FPGA development board.
]

= Publications

#paper(
  title: "Optimizing Federated Learning on Non-IID Data with Reinforcement Learning",
  authors: [Hao Wang, #underline[Zakhary Kaplan], Di Niu, Baochun Li],
  conference: "IEEE INFOCOM 2020",
)

= Relevant Courses

#grid(columns: 2, gutter: 1em,
  course(
    code: "ECE241",
    name: "Digital Systems",
    mark: "A+",
  )[
    Digital logic circuit design with substantial hands-on laboratory work using Verilog on FPGA boards.
  ],
  course(
    code: "ECE334",
    name: "Digital Electronics",
    mark: "A+",
  )[
    Digital design techniques for integrated circuits, CMOS logic design, Elmore delays.
  ],
  course(
    code: "ECE243",
    name: "Computer Organization",
    mark: "A+",
  )[
    CPU design in Verilog and ARM instruction set architecture. Focus on memory, caches, and scheduling IO with interrupts.
  ],
  course(
    code: "ECE344",
    name: "Operating Systems",
    mark: "A+",
  )[
    Concurrency, deadlock, CPU scheduling, memory management, file systems.
  ],
  course(
    code: "ECE345",
    name: "Algorithms & Data Structures",
    mark: "A+",
  )[
    Trees, graphs, amortized analysis, hashing, dynamic programming, greedy, NPC.
  ],
  course(
    code: "ECE244",
    name: "Programming Fundamentals",
    mark: "A+",
  )[
    Object-oriented programming in C++.
  ],
  course(
    code: "APS360",
    name: "Artificial Intelligence Fundamentals",
    mark: "A+",
  )[
    Optimizing neural networks, autoencoders, RNNs, NLP, GANs.
  ]
)
