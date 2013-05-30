'use strict'

memeVineStates = angular.module('memeVine.states')

memeVineStates.states.home = {
  name: 'home',
  url: '/',
  controller: 'HomeController',
  templateUrl: '/assets/home', # TODO use asset path
}
