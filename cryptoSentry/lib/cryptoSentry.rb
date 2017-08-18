require "cryptoSentry/version"

module CryptoSentry

  require "Twitter"

  # Tweet configuration

  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "aCOOMVGF0Q3wKgxzDJSgVxRqL"
    config.consumer_secret     = "9iZoaXcw84PAhow6YQI1YyVtI5Qnur0wfQyHo3RMya4H7ypP2I"
    config.access_token        = "898524146963017729-DVa7emEKvBaxTOdE5CfPSsDPukL8Eb1"
    config.access_token_secret = "WErCeJFJMFJ4j3cY5W7y3rvIg0PhMdyYRSYHAfX0JsxJ3"
  end

  # Search topic
  topic = "$BCH"

  # get the 10 last tweet about a topic and retweet

  search_options = {
    result_type: "recent",
  }

  client.search(topic, search_options).take(10) do |tweet|
    client.retweet tweet
  end

end
