'use strict'

memeVineApp = angular.module('memeVineApp')

memeVineApp.config(['$locationProvider', ($locationProvider) ->
  $locationProvider.html5Mode(true)
])
