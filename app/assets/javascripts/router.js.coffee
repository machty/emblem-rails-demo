
Emblemtest.Router.map ->
  @route "home", { path: "/" }
  @route "about", { path: "/about" }
  @route "favorites", { path: "/favs" }

Emblemtest.Router.reopen
  location: 'history'

