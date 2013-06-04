'use strict'

convoApp = angular.module('convoApp')

convoApp.filter 'range', () ->
  (input, total) ->
    total = parseInt(total)

    for i in [0...total]
      input.push(i)

    input
