require 'rails_helper'

describe Event do
  subject do
    described_class.new(name: name)
  end

  describe "#trucated_name" do
    context "when longer than 7 characters" do
      let(:name) { "foobarbazbuz" }
      it "truncates the name" do
        expect(subject.truncated_name).to eq("foobarb...")
      end
    end
    context "when 7 or fewer characters" do
      let(:name) { "foo" }
      it "doesnt truncate the name" do
        expect(subject.truncated_name).to eq("foo")
      end
    end
  end
end
