class AddColumnInNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :category_new, :string
  end
end
