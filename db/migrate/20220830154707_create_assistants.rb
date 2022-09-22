class CreateAssistants < ActiveRecord::Migration[7.0]
  def change
    create_table :assistants do |t|
      t.text :description
      t.string :cv
      t.string :skills
      t.string :availability
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
