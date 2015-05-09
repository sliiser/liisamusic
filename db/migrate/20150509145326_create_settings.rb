class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name_key
      t.string :value
      t.string :description

      t.timestamps null: false
    end
  end
end
