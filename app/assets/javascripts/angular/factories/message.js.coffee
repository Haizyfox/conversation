'use strict'

app = angular.module("convoApp")

app.factory("Message", () ->
  class Message

    constructor: ->
      @poster = {}
      @content = ''

  Message
)
