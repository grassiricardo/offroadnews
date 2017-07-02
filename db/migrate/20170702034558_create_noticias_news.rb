class CreateNoticiasNews < ActiveRecord::Migration[5.0]
  def change
    create_table :noticias_news do |t|
      t.string :title
      t.string :sub_title
      t.string :content
      t.string :photo_cap
      t.date :diplay_date
      t.references :category
      t.boolean :show_slide_show

      t.timestamps
    end

    drop_table :news
  end
end
