'use strict'

convoAppStates = angular.module('convoApp.states')

convoAppStates.states.conversation = {
  name: 'conversation',
  url: '/n/{id}',
  controller: 'ConversationController',
  templateUrl: '/assets/conversation'
}
