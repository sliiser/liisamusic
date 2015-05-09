class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :body
      t.integer :button_order
      t.boolean :visible
      t.string :name_key

      t.timestamps null: false
    end
  end
end
