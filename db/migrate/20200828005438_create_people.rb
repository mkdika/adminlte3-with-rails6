class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name, limit: 50
      t.string :last_name, limit: 50
      t.date :birth_date
      t.string :gender
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end
