'use strict'

memeVineAppStates = angular.module('memeVineApp.states')

memeVineAppStates.constant('STATES', memeVineAppStates.states)

memeVineAppStates.config(['$stateProvider', ($stateProvider) ->
  loadStates = (states) ->
    for name, state of states
      $stateProvider.state(state)
      loadStates(state.child_states) if state.child_states?

  loadStates(memeVineAppStates.states)
]).run([ '$rootScope', '$state', ($rootScope, $state) ->
  $rootScope.state = $state
])
