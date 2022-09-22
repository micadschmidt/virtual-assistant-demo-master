class AddLastnameToAssistants < ActiveRecord::Migration[7.0]
  def change
    add_column :assistants, :lastname, :string
  end
end
