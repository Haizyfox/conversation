'use strict'

convoAppStates = angular.module('convoApp.states')

convoAppStates.states.home = {
  name: 'home',
  url: '/',
  controller: 'HomeController',
  templateUrl: '/assets/home', # TODO use asset path
}
