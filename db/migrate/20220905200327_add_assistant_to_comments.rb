class AddAssistantToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :assistant, foreign_key: true
  end
end
