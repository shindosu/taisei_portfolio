class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :catch_phrase
      t.text :description
      t.string :thumbnail
      t.string :user_journey_image
      t.string :skill
      t.boolean :responsiveness
      t.string :code_link
      t.string :demo_link

      t.timestamps
    end
  end
end
