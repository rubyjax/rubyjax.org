class Event < ActiveRecord::Base

  store_accessor :location

  def truncated_name
    name.length > 7 ? name[0..6] + "..." : name
  end
end
