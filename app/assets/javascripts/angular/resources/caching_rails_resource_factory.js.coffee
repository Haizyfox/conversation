'use strict'

angular.module('memeVineApp').factory('cachingRailsResourceFactory',
  ['$q', 'railsResourceFactory', 'railsFieldRenamingInterceptor', ($q, railsResourceFactory, railsFieldRenamingInterceptor) ->
    cachingRailsResourceFactory = (config) ->

      # Create the rails resource factory
      resource = railsResourceFactory(
        _(config).extend({
          requestTransformers: ['railsFieldRenamingTransformer'],
          requestInterceptors: ['railsFieldRenamingInterceptor']
        })
      )

      # Add some additional properties to allow caching
      resource.cacheMap = {}
      resource.values = []

      # Map the get method to directGet before overiding the get method later
      resource.directGet = resource.get

      # Clears the resources cache map
      clearCache = ->
        for key, value of resource.cacheMap
          delete resource.cache[key]

        resource.values.length = 0

      # Loads an existing resource into the cache map directly
      resource.primeCache = (key, data)->
        resource.cacheMap[key] = data
        resource.values.push data
        data

      # Sort the values if possible
      sortValues = ->
        if resource.hasOwnProperty 'sort'
          resource.sort resource.values

      # Queries the resource and loads it into the cache (collection)
      resource.load = (params) ->
        promise = resource.query params

        promise.then (results) ->
          if angular.isArray results
            clearCache()

            for value in results
              resource.cacheMap[value.id] = value

              if !value.hasOwnProperty 'recordStatus' || value.recordStatus == 'a'
                resource.values.push value

            sortValues()
            resource.values

          results

        , (error) ->
          clearCache()
          $q.reject error

      # Get the cached value of this resource
      resource.getCachedValue = (id) ->
        if resource.cacheMap.hasOwnProperty(id) then resource.cacheMap[id] else null

      # Gets the resource from the cache or fetches it and loads it into the cache (record)
      resource.get = (id) ->
        deferred = {}
        cached = resource.getCachedValue id

        if cached
          deferred = $q.defer()
          deferred.resolve cached
          deferred.promise
        else
          resource.directGet(id).then (result) ->
            resource.cacheMap[id] = result
            resource.values.push result
            result

      resource

  ])
