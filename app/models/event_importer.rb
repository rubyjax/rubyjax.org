class EventImporter

  def import_events
    url           = "http://api.meetup.com/RubyJax/events"
    response      = Faraday.get(url)
    response_body = response.body
    events        = JSON.parse(response_body)

    events.each do |meetup_event|
      event                       = Event.new
      event.name                  = meetup_event["name"]
      event.event_at              = meetup_event["time"]

      event.location["zip"]       = meetup_event["venue"]["zip"]
      event.location["name"]      = meetup_event["venue"]["name"]
      event.location["city"]      = meetup_event["venue"]["city"]
      event.location["state"]     = meetup_event["venue"]["state"]
      event.location["address_1"] = meetup_event["venue"]["address_1"]

      event.save
    end
  end

end
