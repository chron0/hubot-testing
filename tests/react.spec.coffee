testTools = require('./test-tools.coffee')
loader = testTools.loader('react')
expect = require('chai').expect

################################################################################

describe 'General Reactions and Interactions\n', ->

  beforeEach ->
    @room = loader.createRoom()
    @utils = testTools.roomUtils(@room)

  afterEach ->
    @room.destroy()

  it 'should not open the pod bay doors', ->
    @utils.say('hubot open the pod bay doors', user: 'alice').then =>
      expect(@utils.getFirstResponse()).to.eql("@alice I'm afraid I can't let you do that")

  it 'should react to keyword bug & fehler', ->
    @utils.say('we have a bug', user: 'alice').then =>
      expect(@utils.getFirstResponse()).to.eql("ALARM")

  it 'should react to keyword robot with an URL', ->
    @utils.say('loki is a robot', user: 'alice').then =>
      expect(@utils.getFirstResponse()).to.match
      (/(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})/)

  it 'should react to phrase "deal with it" with an URL', ->
    @utils.say('It is bad, deal with it', user: 'alice').then =>
      expect(@utils.getFirstResponse()).to.match
      (/(https?:\/\/(?:www\.|(?!www))[^\s\.]+\.[^\s]{2,}|www\.[^\s]+\.[^\s]{2,})/)

  it 'should react to food mentions', ->
    @utils.say('chow time... get the food', user: 'alice').then =>
      expect(@utils.getFirstResponse()).to.match
      (/[A-z]*/)
