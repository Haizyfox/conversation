'use strict'

angular.module('memeVineApp').controller('MemeController', [ \
  '$scope', 'VineMeme', '$stateParams', \
    ($scope, VineMeme, $stateParams) ->
      VineMeme.get($stateParams.id).then (meme) ->
        $scope.meme = meme

])
