'use strict'

angular.module('convoApp').controller('HomeController', [ \
  '$scope', 'Participant', 'Message',\
    ($scope, Participant, Message) ->

      $scope.participant = Participant
      $scope.participants = [new Participant(), new Participant()]

      $scope.$watch 'participants[0].isMe', (isMe) ->
        if isMe
          $scope.participants[0].name = 'Me' 
        else 
          $scope.participants[0].name = new Participant().name 

      $scope.newMessage = new Message()
      $scope.newMessage.poster = $scope.participants[0]

      $scope.messages = []

      $scope.postMessage = ->
        $scope.messages.push($scope.newMessage)
        $scope.newMessage = new Message()
        $scope.newMessage.poster = $scope.participants[0]
      
])
