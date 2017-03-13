# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   facepalm - Illustrate a facepalm
#
# Author:
#   rowanmanning

module.exports = (robot) ->
  robot.hear /face[ \-]?palm/i, (msg) ->
    facepalms = [
      "http://replygif.net/i/639.gif",
      "http://replygif.net/i/968.gif",
      "http://replygif.net/i/133.gif",
      "http://replygif.net/i/153.gif",
      "http://replygif.net/i/148.gif",
      "http://replygif.net/i/1012.gif",
      "http://replygif.net/i/197.gif",
      "http://replygif.net/i/792.gif",
      "http://replygif.net/i/661.gif",
      "http://replygif.net/i/586.gif"
    ]
    msg.send msg.random facepalms
