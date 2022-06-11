class AddManagerToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :manager, :integer, default: 0
  end
end
