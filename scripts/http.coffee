# Description:
#   HTTP Interface
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None

module.exports = (robot) ->

  # Announce stuff in channels
  robot.router.post '/loki/notify/:room', (req, res) ->
    room = req.params.room
    message = req.body.message
    robot.messageRoom room, message
    res.end()

  # Give monit something else to monitor other than PID
  robot.router.get '/hubot/monit', (req, res) ->
    res.end "OK"
