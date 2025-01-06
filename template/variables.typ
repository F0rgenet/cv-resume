#let light-theme = (
  text-color: rgb(51, 65, 85),
  background-color: rgb(255, 255, 255)
)

#let dark-theme = (
  text-color: rgb(255, 255, 255),
  background-color: rgb(51, 65, 85)
)

#let font-sizes = (
  title: 28pt,
  subtitle: 8pt,
  text: 7pt,
)

#let get-theme(theme: "light") = {
  if theme == "light" {
    light-theme
  } else {
    dark-theme
  }
}

#let set-font(font-family: "Inter", size: 7pt, weight: "regular", content) = {
  return {
    set text(font: font-family, size: size, weight: weight)
    [#content]
  }
}

#let fonts = (
  title: (content) => set-font(size: 28pt, weight: "bold", content),
  subtitle: (content) => set-font(size: 8pt, weight: "medium", content),
  caption: (content) => set-font(size: 9pt, weight: "bold", content),
  caption-details: (content) => set-font(size: 9pt, weight: "regular", content),
  text: (content) => set-font(content),
  date: (content) => set-font(font-family: "Roboto", size: 8pt, content),
)