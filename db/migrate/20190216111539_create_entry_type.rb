class CreateEntryType < ActiveRecord::Migration[5.2]
  def change
    create_table :entry_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
