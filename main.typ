#import "template/template.typ": *

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
#education(institition: "МБОУ «Гимназия»", city: "Моршанск", degree: "Тех. профиль", start-date: "09.2012", end-date: "06.2023")
#education(institition: "МАИ", city: "Москва", degree: "09.03.02 «ИСИТ»", start-date: "09.2023", end-date: "сейчас")


= Опыт
#lorem(100)
#image("static/background-dark.png", width: 70%)

= Проекты
#lorem(20)

= Навыки & Инструменты
#lorem(200)