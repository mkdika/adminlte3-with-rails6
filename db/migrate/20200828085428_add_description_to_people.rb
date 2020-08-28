class AddDescriptionToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :description, :text
  end
end
