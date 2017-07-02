class CreateVideoHeaderHome < ActiveRecord::Migration[5.0]
  def change
    create_table :video_header_homes do |t|
      t.string :url

      t.timestamps
    end
  end
end
