'use strict'

convoApp = angular.module('convoApp')

convoApp.config(['$locationProvider', ($locationProvider) ->
  $locationProvider.html5Mode(true)
])
