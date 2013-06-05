'use strict'

app = angular.module("convoApp")

app.factory("Participant", () ->
  class Participant

    constructor: ->
      @name = "#{randomName()}"
      @isMe = false
      @twitter = ''

    adj = [
      'Sad',
      'Happy',
      'Confused',
      'Cranky',
      'Snobby'
    ]

    noun = [
      'Walrus',
      'Parakeet',
      'Goblin',
      'Gnu',
      'Otter'
    ]

    randomName = ->
      dice = Math.floor(Math.random() * 4)
      first = adj[dice]
      dice = Math.floor(Math.random() * 4)
      second = noun[dice]
      first + ' ' + second

  Participant
)
