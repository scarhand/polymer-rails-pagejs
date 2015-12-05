Polymer
  is: 'my-app',
  properties: {
    route: {
      type: String
    }
  }

  attached: ->

  displayMessage: (message) ->
    @$.toast.text = message
    @$.toast.show()