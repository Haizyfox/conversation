'use strict'

app = angular.module('convoApp')

app.directive 'verticalCenter', ['$timeout', ($timeout) ->
  {
    link: (scope, element, attrs) ->
      element[0].style.lineHeight = "#{element.parent()[0].offsetHeight}px"
  }
]
