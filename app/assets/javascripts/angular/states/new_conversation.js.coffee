'use strict'

convoAppStates = angular.module('convoApp.states')

convoAppStates.states.new_conversation = {
  name: 'newConversation',
  url: '/new',
  controller: 'NewConversationController',
  templateUrl: '/assets/new_conversation'
}
