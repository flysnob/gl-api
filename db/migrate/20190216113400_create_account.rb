class CreateAccount < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps null: false
    end

    add_reference :accounts, :entity, foreign_key: true
  end
end
