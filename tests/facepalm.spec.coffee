testTools = require('./test-tools.coffee')
loader = testTools.loader('facepalm')
expect = require('chai').expect

################################################################################

describe 'The obligatory Facepalm\n', ->

  beforeEach ->
    @room = loader.createRoom()
    @utils = testTools.roomUtils(@room)

  afterEach ->
    @room.destroy()

  it 'should react to a facepalm with an URL', ->
    @utils.say('facepalm', user: 'alice').then ->
      setTimeout ( ->
        expect(@utils.getFirstResponse()).to.match
        (/(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})/)
      ), 2000
