'use strict'

app = angular.module('convoApp')

app.directive 'counter', () ->
  {
    scope: {
      collection: "=counter",
      increment: "=increment"
    }
    template: '{{collection.length}}',
    link: (scope, element, attrs) ->
      min = parseInt attrs.min, 10
      max = parseInt attrs.max, 10

      # Up
      up = angular.element('<div></div>').addClass('up')
      up.html('<i class="icon-chevron-up"></i>')

      up.bind 'click', () ->
        down.removeClass('hide')
        if scope.collection.length + 1 <= max
          scope.$apply () ->
            scope.collection.push(new scope.increment)
            up.addClass('hide') if scope.collection.length == max
            

      # Down
      down = angular.element('<div></div>').addClass('down').addClass('hide')
      down.html('<i class="icon-chevron-down"></i>')

      down.bind 'click', () ->
        up.removeClass('hide')
        if scope.collection.length - 1 >= min
          scope.$apply () ->
            scope.collection.pop()
            down.addClass('hide') if scope.collection.length == min


      angular.element(element).prepend(up)
      angular.element(element).append(down)
  }
