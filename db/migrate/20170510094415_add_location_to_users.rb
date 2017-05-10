class AddLocationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location_id, :integer
    add_column :distributors, :location_id, :integer
  end
end
