'use strict'

angular.module('convoApp').controller('NewConversationController', [ \
  '$scope', 'Participant', 'Message',\
    ($scope, Participant, Message) ->

      $scope.participant = Participant
      $scope.participants = [new Participant(), new Participant()]
      $scope.participantsMaxedOut = false
      participantMax = 6
      participantMin = 2

      $scope.addParticipant = ->
        $scope.participants.push(new Participant) if ($scope.participants.length + 1) <= participantMax
        if $scope.participants.length >= participantMax
          $scope.participantsMaxedOut = true

      # $scope.$watch 'participants[0].isMe', (isMe) ->
      #   if isMe
      #     $scope.participants[0].name = 'Me' 
      #   else 
      #     $scope.participants[0].name = new Participant().name 

      $scope.newMessage = new Message()
      $scope.newMessage.poster = $scope.participants[0]

      $scope.setPoster = (p) ->
        $scope.newMessage.poster = p

      $scope.messages = []

      $scope.postMessage = ->
        $scope.messages.push($scope.newMessage)
        $scope.newMessage = new Message()
        $scope.newMessage.poster = $scope.participants[0]
      
])
