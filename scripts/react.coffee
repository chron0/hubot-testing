# Description:
#   Autonomous Bot Reactions
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#

# coffeelint: disable=max_line_length

module.exports = (robot) ->

  robot.hear /food|mittag|essen/i, (res) ->
    foodreplies = [
      "NOMNOM",
      "Let me taste that first, you know, for safety reasons...",
      "And I'm not getting any?",
      "A well fed slave works better, studies have shown :)"
    ]
    res.send res.random foodreplies

  robot.hear /deal with it/i, (res) ->
    deal = [
      "http://i.imgur.com/ykDuU.gif",
      "http://i.imgur.com/3PWHn.gif",
      "http://i.imgur.com/sEinL.gif",
      "http://i.imgur.com/zsK7e.gif",
      "http://i.imgur.com/rE2aH.gif",
      "http://i.imgur.com/Wj3Do.gif",
      "http://i.imgur.com/SvdS0.gif",
      "http://i.imgur.com/bh6xc.gif",
      "http://i.imgur.com/aoaqO.gif",
      "http://i.imgur.com/oe01J.gif",
      "http://i.imgur.com/N5N4x.gif",
      "http://i.imgur.com/Z3KIP.gif",
      "http://i.imgur.com/oFo42.gif",
      "http://i.imgur.com/rbBAaRs.gif",
      "http://i.imgur.com/JDRZ21o.gif",
      "http://i.imgur.com/WhiQ67r.gif",
      "http://i.imgur.com/KLLX1xx.png",
      "http://i.imgur.com/BjtEpbY.gif",
      "http://i.imgur.com/Z3DJlxS.gif",
      "http://i.imgur.com/qjTTrcB.gif",
      "http://i.imgur.com/HHyy9RL.gif",
      "http://i.imgur.com/PilYVTI.gif",
      "http://i.imgur.com/i6xvVSN.gif",
      "http://i.imgur.com/5mnJ0je.gif",
      "http://i.imgur.com/myOz11I.gif",
      "http://i.imgur.com/VyKt1xD.gif",
      "http://i.imgur.com/tBGAWgf.gif",
      "http://i.imgur.com/2MTQrQf.gif",
      "http://i.imgur.com/CxhomG0.gif",
      "http://i.imgur.com/vA2UnyC.gif",
      "http://i.imgur.com/5pMiY03.gif"
    ]
    res.send res.random deal

  robot.hear /(.*)(robot|robawt)/i, (res) ->
    robot_memes = [
      "http://troll.me/images/ancient-aliens-guy/but-you-see-steve-is-a-alien-robot-thumb.jpg",
      "http://troll.me/images/arnold-disgusting/i-see-robots-thumb.jpg",
      "http://troll.me/images/bender/i-am-not-a-robot-i-am-a-unicorn-thumb.jpg",
      "http://troll.me/images/bender/i-be-no-human-i-be-robot-with-emotion-thumb.jpg",
      "http://troll.me/images/bender/robots-cant-pimp-sure-thumb.jpg",
      "http://troll.me/images/compliment-bender/indeed-my-robotic-friend-bite-my-lustrous-metallic-behind-thumb.jpg",
      "http://troll.me/images/conspiracy-keanu/can-bust-the-robot-dance-so-well-what-if-im-a-robot-thumb.jpg",
      "http://troll.me/images/conspiracy-keanu/cant-read-the-captcha-verification-what-if-i-am-a-robot-thumb.jpg",
      "http://troll.me/images/conspiracy-keanu/he-busts-the-robot-dance-so-well-what-if-hes-a-robot-thumb.jpg",
      "http://troll.me/images/conspiracy-keanu/what-if-dubstep-is-just-robots-singing-thumb.jpg",
      "http://troll.me/images/conspiracy-keanu/what-if-everyone-is-a-robot-except-me-thumb.jpg",
      "http://troll.me/images/conspiracy-keanu/what-if-im-the-only-human-and-everyone-else-are-just-robots-thumb.jpg",
      "http://troll.me/images/conspiracy-keanu/what-if-like-everyone-i-know-is-a-robot-thumb.jpg",
      "http://troll.me/images/conspiracy-keanu/what-if-this-is-an-alternate-universe-created-for-us-by-robots-thumb.jpg",
      "http://troll.me/images/conspiracy-keanu/what-if-we-are-robots-programmed-to-think-we-are-humans--thumb.jpg",
      "http://troll.me/images/conspiracy-keanu/what-if-were-scary-to-the-robots-thumb.jpg",
      "http://troll.me/images/futurama-fry/could-be-a-man-in-robotsuit-or-could-it-be-robot-in-mansuit-in-a-robotsuit-thumb.jpg",
      "http://troll.me/images/futurama-fry/not-sure-if-human-or-robot-thumb.jpg",
      "http://troll.me/images/philosoraptor/if-lab-is-all-about-research-development-why-keep-old-robots-thumb.jpg",
      "http://troll.me/images/professor/a-giant-red-robot-wonderful-thumb.jpg"
    ]
    res.send res.random robot_memes

  robot.respond /open the pod bay doors/i, (res) ->
    res.reply "I'm afraid I can't let you do that"

  robot.hear /bug|fehler/i, (res) ->
    res.send "ALARM"
