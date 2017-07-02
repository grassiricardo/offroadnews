class AddColumNoticiasNewsOriginNews < ActiveRecord::Migration[5.0]
  def change
    add_column :noticias_news, :origin_news, :string
  end
end
