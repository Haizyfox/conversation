'use strict'

memeVineAppStates = angular.module('memeVineApp.states')

memeVineAppStates.states.meme = {
  name: 'meme',
  url: '^/{id}',
  controller: 'MemeController',
  templateUrl: '/assets/meme'
}
