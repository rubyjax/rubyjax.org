class Event < ActiveRecord::Base

  store_accessor :location

  validates :location, presence: true

  def truncated_name
    name.length > 7 ? name[0..6] + "..." : name
  end
end
