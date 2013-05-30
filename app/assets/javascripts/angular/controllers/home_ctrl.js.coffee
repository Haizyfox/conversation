'use strict'

angular.module('memeVine').controller('HomeController', [ \
  '$scope', \
    ($scope) ->
      $scope.vineUrl = "https://vine.co/v/bnrtW52x1uJ/card"
      $scope.bottomText = "Enter bottom text"
      $scope.topText = "Enter top text"
])