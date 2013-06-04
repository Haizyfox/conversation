'use strict'

angular.module('memeVineApp').controller('HomeController', [ \
  '$scope', 'VineMeme', '$location', \
    ($scope, VineMeme, $location) ->
      $scope.meme = new VineMeme()

      $scope.meme.url = "https://vine.co/v/bQWtXT2wPnz/card"
      $scope.meme.top = "Ryan Gosling"
      $scope.meme.bottom = "wont eat his cereal"

      $scope.saveMeme = ->
        $scope.meme.create().then (meme) ->
          $location.path('/' + meme.token)
          
      
])
