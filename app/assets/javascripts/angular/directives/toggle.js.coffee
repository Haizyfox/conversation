'use strict'

app = angular.module('convoApp')

app.directive 'toggle', () ->
  {
    scope: { toggleSwitch:'=toggle' }
    template: '{{toggleState}}',
    link: (scope, element, attrs) ->
      _on = attrs.on
      _off = attrs.off
      scope.toggleState = _off

      # Turn on
      turn_on = angular.element('<div></div>').addClass('on')
      turn_on.html('<i class="icon-chevron-up"></i>')

      turn_on.bind 'click', () ->
        scope.$apply () ->
          turn_off.removeClass('hide')
          turn_on.addClass('hide')
          scope.toggleState = _on
          scope.toggleSwitch = true

      # Turn Off
      turn_off = angular.element('<div></div>').addClass('off').addClass('hide')
      turn_off.html('<i class="icon-chevron-down"></i>')

      turn_off.bind 'click', () ->
        scope.$apply () ->
          turn_on.removeClass('hide')
          turn_off.addClass('hide')
          scope.toggleState = _off
          scope.toggleSwitch = false


      angular.element(element).prepend(turn_on)
      angular.element(element).append(turn_off)
  }
