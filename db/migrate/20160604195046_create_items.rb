class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :body
      t.integer :count

      t.timestamps null: false
    end
  end
end
