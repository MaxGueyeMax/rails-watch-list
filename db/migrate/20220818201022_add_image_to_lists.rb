class AddImageToLists < ActiveRecord::Migration[7.0]
  def change
    add_column :lists, :email, :string
  end
end
