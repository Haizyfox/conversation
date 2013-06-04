'use strict'

angular.module('convoApp').controller('HomeController', [ \
  '$scope', \
    ($scope) ->
      $scope.someone = []

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

      $scope.randomName = ->
        dice = Math.floor(Math.random() * 4)
        first = adj[dice]
        dice = Math.floor(Math.random() * 4)
        second = noun[dice]
        first + ' ' + second

      
])
