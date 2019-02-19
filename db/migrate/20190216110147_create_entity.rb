class CreateEntity < ActiveRecord::Migration[5.2]
  def change
    create_table :entities do |t|
      t.string :name
      
      t.timestamps null: false
    end
    
    add_reference :entities, :subscription, foreign_key: true
  end
end
