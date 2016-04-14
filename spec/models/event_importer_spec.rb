require 'rails_helper'

describe EventImporter do
  describe "#import_events" do
    it "imports events from Meetup.com" do
      described_class.new.import_events
      expect(Event.count).to eq(51)
    end
  end
end
