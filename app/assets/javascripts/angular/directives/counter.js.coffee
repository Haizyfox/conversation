'use strict'

app = angular.module('convoApp')

app.directive 'counter', () ->
  {
    template: '{{participants}}',
    link: (scope, element, attrs) ->
      min = parseInt attrs.min, 10
      max = parseInt attrs.max, 10
      scope.participants = min

      # Up
      up = angular.element('<div></div>').addClass('up')
      up.html('<i class="icon-chevron-up"></i>')

      up.bind 'click', () ->
        down.removeClass('hide')
        if scope.participants + 1 <= max
          scope.$apply () ->
            scope.participants++
            up.addClass('hide') if scope.participants == max
            

      # Down
      down = angular.element('<div></div>').addClass('down').addClass('hide')
      down.html('<i class="icon-chevron-down"></i>')

      down.bind 'click', () ->
        up.removeClass('hide')
        if scope.participants - 1 >= min
          scope.$apply () ->
            scope.participants--
            down.addClass('hide') if scope.participants == min


      angular.element(element).prepend(up)
      angular.element(element).append(down)
  }
