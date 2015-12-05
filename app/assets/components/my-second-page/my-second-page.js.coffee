Polymer
  is: 'my-second-page',
  behaviors: [RouteableBehavior],
  properties: {
    times: {
      type: Number,
      value: 1
    },
    route: {
      type: Object,
      value: {
        uri: '/second-page',
        route: 'second-page',
        hasParams: false
      }
    }
  }

  visit: ->
    @times++