class RemoveColumns < ActiveRecord::Migration
  def up
    remove_column :publications, :description
  end

  def down
    add_column :publications, :description
  end
end
