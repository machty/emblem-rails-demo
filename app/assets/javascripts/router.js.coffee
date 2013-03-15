
Emblemtest.Router.map ->
  @route "home", { path: "/" }
  @route "about", { path: "/about" }
  @route "favorites", { path: "/favs" }

  @route "login"
  @resource "admin", ->
    @route "manageUsers"
    @route "manageWidgets"
    @route "manageThings"

Emblemtest.Router.reopen
  location: 'history'

# Define transition events here.
Emblemtest.AdminRoute = Ember.Route.extend
  transitions: 
    'from *': (e) ->
      # Make sure the user's logged in
      unless @controllerFor('admin').loggedIn
        e.transitionTo 'login'

Emblemtest.AdminManageWidgetsRoute = Ember.Route.extend
  transitions:
    'to *': (e) ->
      if @controller.get('userHasTypedStuffIn')
        unless confirm("Are you sure you want to abandon progress on this form?")
          e.preventTransition()

  setupController: (controller) ->
    controller.set('name', "")

