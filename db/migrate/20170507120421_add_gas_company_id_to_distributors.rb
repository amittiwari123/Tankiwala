class AddGasCompanyIdToDistributors < ActiveRecord::Migration
  def change
    add_column :distributors, :gas_company_id, :integer
  end
end
