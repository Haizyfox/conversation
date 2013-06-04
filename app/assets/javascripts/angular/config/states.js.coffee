'use strict'

convoAppStates = angular.module('convoApp.states')

convoAppStates.constant('STATES', convoAppStates.states)

convoAppStates.config(['$stateProvider', ($stateProvider) ->
  loadStates = (states) ->
    for name, state of states
      $stateProvider.state(state)
      loadStates(state.child_states) if state.child_states?

  loadStates(convoAppStates.states)
]).run([ '$rootScope', '$state', ($rootScope, $state) ->
  $rootScope.state = $state
])
