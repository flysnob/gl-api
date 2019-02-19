class CreateEntry < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.text :description
      t.datetime :date

      t.timestamps null: false
    end

    add_reference :entries, :entity, foreign_key: true
  end
end
