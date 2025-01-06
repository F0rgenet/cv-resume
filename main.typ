#import "template/template.typ": cv-template

#set page(margin: (x: 0pt, y: 0pt))

#show: cv-template.with(
  theme: "light",
  name: "Павел",
  surname: "Елисеев",
  jobs: ("Fullstack Разработчик", "UI/UX Дизайнер"),
  phone: "79998083815",
  email: "forgenet@inbox.ru",
  location: "Москва, Россия",
)

= Образование
#lorem(50)
#lorem(50)
#lorem(50)


= Опыт
#lorem(100)
#image("static/background-dark.png", width: 70%)

= Проекты
#lorem(20)

= Навыки & Инструменты