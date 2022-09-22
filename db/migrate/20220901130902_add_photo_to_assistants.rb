class AddPhotoToAssistants < ActiveRecord::Migration[7.0]
  def change
    add_column :assistants, :photo, :string
  end
end
