class AddColumNoticiasNews < ActiveRecord::Migration[5.0]
  def change
    add_column :noticias_news, :photo_capa, :string
    add_column :noticias_news, :category_new, :string
  end
end
