@RouteableBehavior = {
  properties: {
    user: {
      type: Object
    }
    _visiting: {
      type: Boolean,
      value: false,
      notify: true,
      observer: '_visitingChanged'
    },
    route: {
      type: Object,
      value: {
        uri: '/',
        route: 'home',
        hasParams: false
      }
    }
  }

  attached: ->
    @registerRoute()
  
  registerRoute: ->
    console.log("Registering route for #{@.is}")
    that = @
    page that.route.uri, (data)=>
      app.route = that.route.route
      app.params = data.params if that.route.hasParams?
      that._visiting = true
      that.visit()

    page.exit that.route.uri, (ctx, next) =>
      that._visiting = false
      that.leave()
      next()

  _visitingChanged:->

  visit: ->
    console.log("Visiting #{@.is}")

  leave: ->
    console.log("Leaving #{@.is}")

  isVisiting: ->
    @_visiting
}