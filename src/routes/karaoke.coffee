TrackModel = require '../models/track'

class Karaoke
  constructor: (@app) ->

    console.log 'karaoke being constructed.'

    @app.get '/karaoke', @karaoke
    @app.get '/karaoke/:id', @karaoke

  karaoke: (req, res) ->

    console.log 'rendering karaoke class or something'
    {id} = req.params
    
    # help how do I pass this routeParam onward?
    # ideally I would load up the track info and send it to the
    # controller. or I could just pass the param to the controller
    # and let the controller hit TrackService.
    TrackModel.findOne {_id: id}, (err, track) ->
      console.log track
    
    res.render 'youtube'

module.exports = (app) -> new Karaoke app