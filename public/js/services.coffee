'use strict'

# Services

allServices = angular.module('allServices', [])

allServices.service('SampleService', [
  -> 
    this.data = [{
    "artist_name": "Metallica", "track_name": "Lover's Quarrel"
    }, 
    {
      "artist_name": "Altar of Plagues", "track_name": "Lover's Quarrel"
    }, 
    {
      "artist_name": "Death Cab for Cutie", "track_name": "Lover's Quarrel"
    }, 
    {
      "artist_name": "Owl City", "track_name": "Lover's Quarrel"
    }, 
    {
      "artist_name": "Fear Factory", "track_name": "Lover's Quarrel"
    }, 
    {
      "artist_name": "The Postal Service", "track_name": "Lover's Quarrel"
    }, 
    {
      "artist_name": "Band 5", "track_name": "Lover's Quarrel"
    }, 
    {
      "artist_name": "Band 6", "track_name": "Lover's Quarrel"
    }, 
    {
      "artist_name": "Band 7", "track_name": "Lover's Quarrel"
    }, 
    {
      "artist_name": "Band 8", "track_name": "Lover's Quarrel"
    }]

    return null
])

allServices.service('TrackService', ['$http', '$resource',
  ($http, $resource) ->

    this.data = [{
      artist_name: "Placeholder",
      track_name: "Be Patient"
      }]

    # this.getData = ->
    #   console.log 'getData called.'
    #   url = "/api/track"
    #   resource = $resource(url)
    #   things = resource.query {}, (result) ->
    #     console.log result
    #     return result

    # this.getData = ->
      
    #   url = '../data/tracklist'
    #   promise = $http.get(url)
    #   .then (results) ->
    #     # TODO check headers and stuff
        

          
        
    #     menuItems = []
    #     for track in results.data

    #       # TODO ew, too much html in the label
    #       # just use a custom template vi angular-strap
    #       # and maybe a custom filter for these icons / classes
          
    #       switch track.total_quality
    #         when 0
    #           icon = 'fa-star-o'
    #         when 1
    #           icon = 'fa-star-half-o'
    #         when 2
    #           icon = 'fa-star'

    #       menuItems.push {
    #         "value": track.track_id,
    #         "label": "<i class=\"fa #{icon}\"></i> #{track.artist_name} - #{track.track_name}",
    #         "total_quality": track.total_quality
    #       }

    #     menuItems.push {
    #       "value": 1,
    #       "label": "",
    #       "total_quality": 0
    #     }

    #     return menuItems

    #   return promise

    # killed this and put it straight in the Playback Controller
    # this.lookupTrack = (trackId) ->

    #   url = "/api/track"
    #   resource = $resource(url)
    #   resource.query { _id: trackId }, (result) ->
    #     console.log 'lookupTrack getting this:'
    #     console.log result
    #     return result
    #   return resource



    return null

])