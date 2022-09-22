class AddColumnToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :photo, :string
  end
end
