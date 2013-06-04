'use strict'

app = angular.module("memeVineApp")

app.factory("VineMeme", [ "cachingRailsResourceFactory", (cachingRailsResourceFactory) ->
  VineMeme = cachingRailsResourceFactory({
    url: "/vine_memes/{{id}}",
    name: 'VineMeme'
  })

  VineMeme.prototype.toParam = ->
    @token

  VineMeme
])
