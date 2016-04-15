class EventImporter
  URL = "http://api.meetup.com/RubyJax/events"

  LOCATION_ATTRS = %w(zip name city state address_1 address_2)


  def self.import_events
    new.import_events
  end

  def import_events
    events.each do |meetup_event|
      Event.create!({
        name: meetup_event["name"],
        event_at: meetup_event["time"],
        location: meetup_event["venue"].slice(*LOCATION_ATTRS)
      })
    end
  end

  def events
    JSON.parse(response_body)
  end

  def response_body
    Faraday.get(URL).body
  end

end
