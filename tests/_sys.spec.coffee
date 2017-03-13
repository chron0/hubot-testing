testTools = require('./test-tools.coffee')
loader = testTools.loader('sys')
expect = require('chai').expect
sinon = require('sinon')

################################################################################

describe 'Base Functions\n', ->

  beforeEach ->
    @room = loader.createRoom()
    @utils = testTools.roomUtils(@room)

  afterEach ->
    @room.destroy()

  it 'should reply with a PONG to ping', ->
    @utils.say('hubot ping', user: 'alice').then =>
      expect(@room.messages).to.eql [
        ['alice', 'hubot ping']
        ['hubot', 'PONG']
      ]

  it 'should echo the name of the user', ->
    @utils.say('hubot echo alice', user: 'alice').then =>
      expect(@room.messages).to.eql [
        ['alice', 'hubot echo alice']
        ['hubot', 'alice']
      ]

  it 'should reply with servers timestamp', ->
    @utils.say('hubot time', user: 'alice').then =>
      expect(@utils.getFirstResponse()).to.match
      (/([A-z]*) ([A-z]*) (\d{2}) (\d{4}) (\d{2}):(\d{2}):(\d{2})/)
