class CreateFooBarKitties < ActiveRecord::Migration
  def change
    create_table :foo_bar_kitties do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
