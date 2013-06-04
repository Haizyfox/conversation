'use strict'

convoAppStates = angular.module('convoApp.states')

convoAppStates.states.conversation = {
  name: 'conversation',
  url: '/convo/{id}',
  controller: 'ConversationController',
  templateUrl: '/assets/conversation'
}
