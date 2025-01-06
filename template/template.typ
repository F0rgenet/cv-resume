#import "variables.typ": get-theme, fonts

#let header-info(icon, value) = {
  box([#image(icon, width: 100pt)#value], fill: black.transparentize(90%))
}

#let header(name: "Иван", surname: "Иванов", jobs: ("Разработчик", ), phone: "72222222222", email: "ivan@ivan.com", location: "Москва, Россия") = {
  place()[#box(image("../static/background-light.png", width: 100%))]
  v(7%)
  set par(leading: 10pt)
  align(center, [
    #[
      #show: fonts.title
      #name #surname
    ]
    #linebreak()
    #[
      #show: fonts.subtitle
      #jobs.join(" · ")
    ]
    #linebreak()
    #[
      #show: fonts.text
      #phone #email #location 
    ]
  ]
  )
}

#let cv-template(
  theme: "light",
  name: "Иван",
  surname: "Иванов",
  jobs: ("Разработчик"),
  phone: "72222222222",
  email: "ivan@ivan.com",
  location: "Москва, Россия",
  body
) = {
  set document(author: name + " " + surname, title: "CV-Резюме")
  set page(margin: (x: 0pt, y: 0pt))

  set text(fill: get-theme(theme: theme).text-color)
  show: fonts.text
  show heading: it => [
    #show: fonts.caption
    #it
  ]

  header(name: name, surname: surname, jobs: jobs, phone: phone, email: email, location: location)
  // TODO: Разделители
  box(width: 100%, height: 0.5pt, fill: gray.transparentize(60%))
  
  let headings = ()
  let elements = ()
  for element in body.children {
    if type(element) == content and element.func() == heading { 
      headings.push(element)
    } else {
      elements.push(element)
    }
  }

  let cells = ()
  let current-row = 0
  for (i, element) in body.children.enumerate() {
    if type(element) != content { continue }
    if element.func() == heading {
      cells.push(grid.cell(x: 0, y: current-row, [ #element ]))
    } else if repr(element.func()) not in ("parbreak", "linebreak", "space") { 
      cells.push(grid.cell(x: 1, y: current-row, [ #element ]))
      current-row += 1
    }
  }
  pad(
    x: 50pt,
    grid(
      stroke: black.transparentize(90%),
      inset: (x: 0pt, y: 15pt),
      columns: 2,
      ..cells
    )
  )
}