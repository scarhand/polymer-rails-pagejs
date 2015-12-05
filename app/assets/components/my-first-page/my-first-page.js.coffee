Polymer
  is: 'my-first-page',
  behaviors: [RouteableBehavior],
  properties: {
    times: {
      type: Number,
      value: 1
    },
    route: {
      type: Object,
      value: {
        uri: '/home',
        route: 'home',
        hasParams: false
      }
    }
  }

  visit: ->
    @times++