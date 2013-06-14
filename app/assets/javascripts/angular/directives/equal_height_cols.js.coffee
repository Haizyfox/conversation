'use strict'

app = angular.module('convoApp')

app.directive 'equalHeightCols', ['$timeout', ($timeout) ->
  {
    link: (scope, element, attrs) ->
      compare = 0

      setAllColumnHeightsTo = (height) ->
        for col in angular.element(element).children()
          col.style.height = "#{height}px"

      equaliseColumnHeights = ->
        for col in angular.element(element).children()
          if col.offsetHeight > compare
            compare = col.offsetHeight
            setAllColumnHeightsTo(compare)
          else
            col.style.height = "#{compare}px"

      scope.myelement = element[0]
      scope.$watch "myelement.childElementCount", () ->
        equaliseColumnHeights()

      if !window.addEventListener
        window.attachEvent("load", () ->
          $timeout equaliseColumnHeights, 300
        )
      else
        window.addEventListener("load", 
          $timeout equaliseColumnHeights, 300
        , false)
  }
]
