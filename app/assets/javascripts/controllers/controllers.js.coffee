
Emblemtest.ApplicationController = Ember.Controller.extend({})

NAMES = [
  "Alex Matchneer"
  "Shania Twain"
  "Borfh McGee"
  "Rebecca Black"
]

Emblemtest.HomeController = Em.Controller.extend

  list: [ ]

  angel: "BORF"

  addToList: ->
    @get('list').pushObject
      name: NAMES[Math.floor Math.random() * NAMES.length]

Emblemtest.AdminController = Em.Controller.extend
  loggedIn: false

Emblemtest.LoginController = Em.Controller.extend
  login: ->
    @controllerFor('admin').set('loggedIn', true)
    alert "You are now logged in! You can visit those admin links now."

Emblemtest.AdminManageWidgetsController = Em.Controller.extend
  name: ""
  userHasTypedStuffIn: ( ->
    @get("name").length > 0
  ).property('name')
