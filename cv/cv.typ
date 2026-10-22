#import "@preview/basic-resume:0.2.9": *

// Personal Information
#let name = "Tharen Candi"
#let location = "Padova, Italy / Sydney, Australia"
#let email = "candi.tharen@gmail.com"
#let github = "https://github.com/tharencandi"
#let linkedin = "https://www.linkedin.com/in/tharencandi/"
#let personal-site = "https://tharencandi.net"
#let phone = "+39 3761273583"

// Everything below the summary comes from the website's _data/*.yml, so each
// entry is written once. An entry is listed when its `show` has `cv`, under its
// short_title/short_subtitle if set, with only the bullets that have a `short`
// version. Build with cv/build.sh, which sets --root so these paths resolve.
#let data(file) = yaml("/_data/" + file + ".yml")

#let on-cv(e) = "cv" in e.at("show", default: ())
#let cv-title(e) = e.at("short_title", default: e.title)

// YAML text is plain, not Typst markup, so @, ~ and * need no escaping.
#let cv-text(s) = str(s).replace("'", "’")

// "Feb 2026 – Present" in the YAML becomes the template's "Feb 2026 — Present".
#let cv-dates(e) = {
  let d = str(e.at("date", default: ""))
  let parts = d.split(" – ")
  if parts.len() == 2 { dates-helper(start-date: parts.at(0), end-date: parts.at(1)) } else { d }
}

// Bold title, the subtitle if any, then each link under its short_label
// (Paper, GitHub), with the dates on the right. Written out rather than using
// the template's project(), which adds a comma even when there's no subtitle.
#let cv-heading(e, subtitle) = {
  let links = e.at("links", default: ()).map(l => link(l.url, l.at("short_label", default: l.label)))
  [*#cv-text(cv-title(e))*#if subtitle != "" [, #cv-text(subtitle)]#links.map(l => [ · #l]).join() #h(1fr) #cv-dates(e)]
}

#let cv-bullets(e) = list(
  ..e.at("bullets", default: ()).filter(b => "short" in b).map(b => cv-text(b.short)),
)

// One project or job: heading and bullets, kept on one page.
#let cv-entry(heading, e) = block(breakable: false, {
  heading
  cv-bullets(e)
})

// Contact details are written out below rather than passed to the template,
// so links show a short label instead of the full URL. The negative pad
// takes up the space of the template's (now empty) contact line.
#show: resume.with(
  author: name,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "a4",
  author-position: left,
  personal-info-position: left,
)

// No build timestamp, so rebuilding unchanged sources gives an identical PDF
// and CI only commits when the CV really changed.
#set document(date: none)

#pad(top: -1.2em)[
  #(
    phone,
    location,
    link("mailto:" + email)[#email],
    link(github)[GitHub],
    link(linkedin)[LinkedIn],
    link(personal-site)[Website],
  ).join("  |  ")
]

Italian/Australian dual citizen. MSc Computer Science (AI) student at the intersection of AI and systems: TinyML, embedded systems, computer vision, representation learning. Graduating April 2027, and seeking a graduate role.

== Education

// One line per degree: institution and degree, grade, dates on the right. A
// grid so the grades line up; rows sit as close as lines of a paragraph.
#context grid(
  columns: (auto, 1fr, auto),
  column-gutter: 0.6em,
  row-gutter: par.leading,
  align: (left, left, right),
  ..data("education").filter(on-cv).map(e => (
    [*#cv-text(e.org)*, #cv-text(e.title)],
    if "note" in e [· #cv-text(e.note)] else [],
    cv-dates(e),
  )).flatten(),
)

== Research and Projects

#for e in data("projects").values().flatten().filter(on-cv) {
  cv-entry(cv-heading(e, e.at("short_subtitle", default: e.at("subtitle", default: ""))), e)
}

== Work Experience

// One-line headings like the projects: title, then employer and location.
#for e in data("experience").filter(on-cv) {
  let employer = (e.org, e.at("location", default: none)).filter(x => x != none).join(", ")
  cv-entry(cv-heading(e, employer), e)
}

#grid(
  columns: (1fr, 1fr),
  column-gutter: 2em,
  [
    == Honours and Awards
    #list(..data("awards").filter(on-cv).map(a => [
      *#cv-text(cv-title(a))*: #cv-text(a.at("short_subtitle", default: a.org)) (#a.date)
    ]))
  ],
  [
    == Skills
    #list(..data("skills").filter(s => "short" in s).map(s => [
      *#cv-text(cv-title(s))*: #cv-text(s.short)
    ]))
  ]
)
