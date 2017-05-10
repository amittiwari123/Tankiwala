class CreateGasCompanies < ActiveRecord::Migration
  def change
    create_table :gas_companies do |t|
      t.string :name
      t.string :company_logo

      t.timestamps null: false
    end
  end
end
