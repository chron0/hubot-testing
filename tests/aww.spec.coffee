testTools = require('./test-tools.coffee')
loader = testTools.loader('aww')
expect = require('chai').expect

################################################################################

describe 'The daily Awwwh\n', ->

  beforeEach ->
    @room = loader.createRoom()
    @utils = testTools.roomUtils(@room)

  afterEach ->
    @room.destroy()

  it 'should react to keyword robot with an URL', ->
    @utils.say('hubot aww', user: 'alice').then ->
      setTimeout -> # FIXME: This doesn't work at all
        expect(@utils.getFirstResponse()).to.match
        (/(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})/)
      , 1000
