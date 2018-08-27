class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :done
      t.integer :priority
      t.datetime :due_date
      t.integer :user_id
      t.references :todo, foreign_key: true

      t.timestamps
    end
  end
end
