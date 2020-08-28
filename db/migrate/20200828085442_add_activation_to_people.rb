class AddActivationToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :activation, :boolean, default: true
  end
end
