testTools = require('./test-tools.coffee')
loader = testTools.loader('polite')
expect = require('chai').expect

################################################################################

describe 'General Sociability and Politeness\n', ->

  beforeEach ->
    @room = loader.createRoom()
    @utils = testTools.roomUtils(@room)

  afterEach ->
    @room.destroy()

  it 'should respond to a greeting', ->
    @utils.say('hubot hello', user: 'alice').then =>
      expect(@utils.getFirstResponse()).to.eql('@alice hubot at your service!')

  it 'should respond to a thanks', ->
    @utils.say('hubot thanks', user: 'alice').then =>
      expect(@utils.getFirstResponse()).to.match(/^[A-z]*/)

  it 'should respond to a short thx in kind', ->
    @utils.say('hubot thx', user: 'alice').then =>
      expect(@utils.getFirstResponse()).to.match(/^@alice [a-z][a-z]$/)

  it 'should respond to a farewell', ->
    @utils.say('hubot bye', user: 'alice').then =>
      expect(@utils.getFirstResponse()).to.match(/^[A-z]*/)
