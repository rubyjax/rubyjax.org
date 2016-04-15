require 'rails_helper'

RSpec.describe EventImporter do
  describe "#import_events" do

    before do
      event_response = File.read('spec/fixtures/events.json')
      allow_any_instance_of(described_class)
        .to receive(:response_body).and_return(event_response)

      described_class.import_events
    end

    it "imports events from Meetup.com" do
      expect(Event.count).to eq(51)
    end

    it "imports locations" do
      expect(Event.first.location).to_not be_empty
    end

  end
end
