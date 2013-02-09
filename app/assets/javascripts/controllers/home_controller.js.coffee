
NAMES = [
  "Alex Matchneer"
  "Shania Twain"
  "Borfh McGee"
  "Rebecca Black"
]

Emblemtest.HomeController = Em.Controller.extend

  list: [ ]

  addToList: ->
    @get('list').pushObject
      name: NAMES[Math.floor Math.random() * NAMES.length]
