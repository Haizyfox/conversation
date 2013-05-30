'use strict'

memeVineStates = angular.module('memeVine.states')

memeVineStates.constant('STATES', memeVineStates.states)

memeVineStates.config(['$stateProvider', ($stateProvider) ->
  loadStates = (states) ->
    for name, state of states
      $stateProvider.state(state)
      loadStates(state.child_states) if state.child_states?

  loadStates(memeVineStates.states)
]).run([ '$rootScope', '$state', ($rootScope, $state) ->
  $rootScope.state = $state
])
