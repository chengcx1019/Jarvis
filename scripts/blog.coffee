module.exports = (robot) ->

  robot.hear /blog_params/i, (res) ->
    res.send "title, body, slug, category, description, tags, remote_source; title and remote_source are required"

  robot.respond /trigger (.*)/i, (res) ->
    remote_source = res.match[1]
    req_url = "/blog/api/trigger?remote_source=" + remote_source
    robot.http("https://changxin10m.com" + req_url)
    .get() (err, res, body) ->
    res.reply req_url


  robot.hear /save/i, (res) ->
    req_url = "/blog/api/save?title=Libra研究报告&remote_source=finance/libra_research.md&category=su&tag=finance,Libra,blockchain"
    robot.http("https://changxin10m.com" + req_url)
      .get() (err, res, body) ->vi
      res.send "save success"

  robot.hear /save_example/i, (res) ->
    res.send "https://changxin10m.com/blog/api/save?title=Libra&remote_source=finance/libra_research.md&category=su&tag=finance,Libra,blockchain"

  robot.hear /trigger_example/i, (res) ->
    res.send "https://changxin10m.com/blog/api/trigger?remote_source=finance/xxx.md"





