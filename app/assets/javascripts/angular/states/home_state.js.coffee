'use strict'

memeVineAppStates = angular.module('memeVineApp.states')

memeVineAppStates.states.home = {
  name: 'home',
  url: '/',
  controller: 'HomeController',
  templateUrl: '/assets/home', # TODO use asset path
}
