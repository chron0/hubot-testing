# Description:
#   ACL
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   chrono

module.exports = (robot) ->
  robot.on 'acl', (order, allow, deny) ->
    order allow, deny
    allow text: /.*/
    deny name: ['bay4k', 'manny'], text: /^jenkins/
    deny name: ['sticky'], text: /^jenkins (b|build)/
