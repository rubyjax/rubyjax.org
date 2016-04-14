class EventImporter

  def import_events
    url           = "http://api.meetup.com/RubyJax/events"
    response      = Faraday.get(url)
    response_body = response.body
    events        = JSON.parse(response_body)

    events.each do |meetup_event|
      event          = Event.new
      event.name     = meetup_event["name"]
      event.event_at = meetup_event["time"]
      event.save
    end
  end

end
