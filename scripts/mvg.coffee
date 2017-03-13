# Description
#   A hubot script that fetches MVG Departures at Isartor
#
# Configuration:
#   None
#
# Commands:
#   hubot mvg - Get MVG Departures at Isartor
#   hubot mvg <Haltestelle> - Get MVG Departures at <Haltestelle>
#
# Author:
#   chrono

url = require("url")
cheerio = require("cheerio")
iconv = require("iconv-lite")

module.exports = (robot) ->
  robot.respond /mvg/i, (msg) ->
    # coffeelint: disable=max_line_length
    URL = 'https://www.mvg-live.de/ims/dfiStaticAuswahl.svc?haltestelle=Isartor&bus=checked&tram=checked&sbahn=checked'
    # coffeelint: enable=max_line_length
    msg.http(URL)
      .get() (err, res, body) ->
        #$ = cheerio.load(body)
        buf = iconv.decode(new Buffer(body), 'ISO-8859-1')
        #utfbuf = iconv.encode(body, "utf-8")
        $ = cheerio.load(buf)
        data = []
        mvgStr = ""
        $('table tr').each (i, tr) ->
          row =
            'line': $(this).children().eq(0).text().trim()
            'dest': $(this).children().eq(1).text().trim()
            'etd': $(this).children().eq(2).text().trim()
          data.push row

        #robot.logger.info(data)

        data.forEach (mvg, i) ->
          if mvg.etd > 0
            mvgStr += mvg.line + ' - ' + mvg.dest + ' - ' + mvg.etd + ' Min. \n'

        #charset = "ISO-8859-1"
        #buffer = new Buffer(mvgStr, charset)
        #test1 = iconv.decode(new Buffer(mvgStr, "binary"))
        #test1 = iconv.encode(new Buffer(mvgStr, "binary"), "UTF-8")
        #utf8 = iconv.encode(test1, "UTF-8")
        #utf8String = buffer.toString(charset)
        msg.send(mvgStr)
