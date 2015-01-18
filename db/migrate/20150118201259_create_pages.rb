class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :title
      t.text :content
      t.date :pub_date
      t.text :url
      t.text :category
      t.string :author
      t.string :image
      t.string :source

      t.timestamps null: false
    end
  end
end
