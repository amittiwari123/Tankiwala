class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :name
      t.string :contact
      t.string :email
      t.string :city
      t.string :state
      t.text :address

      t.timestamps null: false
    end
  end
end
