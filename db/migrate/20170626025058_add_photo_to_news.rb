class AddPhotoToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :news, :photo_capa, :string
  end
end
