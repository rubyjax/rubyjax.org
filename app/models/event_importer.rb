class EventImporter

  def import_events
    url = "http://api.meetup.com/RubyJax/events"
    response = Faraday.get(url)
    response_body = response.body
    require 'pry'; binding.pry;
    events = JSON.parse(response_body)
    events.each do |event|
      Event.create(
        name: event["name"],
        event_at: event["time"]
      )
    end

  end

end
