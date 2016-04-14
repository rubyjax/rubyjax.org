class AddFieldsToEvents < ActiveRecord::Migration[5.0]
  def change
    enable_extension "hstore"
    add_column :events, :rsvps, :integer
    add_column :events, :location, :hstore, default: {}
    add_column :events, :description, :string
  end
end
