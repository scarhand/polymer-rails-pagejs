Polymer
  is: 'my-third-page',
  behaviors: [RouteableBehavior],
  properties: {
    times: {
      type: Number,
      value: 1
    },
    foo: {
      type: String
    }
    route: {
      type: Object,
      value: {
        uri: '/third-page/:foo',
        route: 'third-page',
        hasParams: true
      }
    }
  }

  visit: ->
    @times++