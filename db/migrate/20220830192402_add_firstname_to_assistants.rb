class AddFirstnameToAssistants < ActiveRecord::Migration[7.0]
  def change
    add_column :assistants, :firstname, :string
  end
end
