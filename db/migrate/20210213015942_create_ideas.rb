class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas do |t|
      t.string :name, null: false
      t.text :description, null: false 
      t.boolean :share
      t.timestamps
    end
  end
end
