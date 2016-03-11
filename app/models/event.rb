class Event < ActiveRecord::Base
  def truncated_name
    name.length > 7 ? name[0..6] + "..." : name
  end
end
