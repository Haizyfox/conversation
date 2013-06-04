'use strict'

app = angular.module("convoApp")

app.factory("Conversation", [ "cachingRailsResourceFactory", (cachingRailsResourceFactory) ->
  Conversation = cachingRailsResourceFactory({
    url: "/{{id}}",
    name: 'conversation'
  })

  Conversation.prototype.toParam = ->
    @token

  Conversation
])
