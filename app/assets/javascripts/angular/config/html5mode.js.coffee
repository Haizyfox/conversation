'use strict'

memeVine = angular.module('memeVine')

memeVine.config(['$locationProvider', ($locationProvider) ->
  $locationProvider.html5Mode(true)
])
