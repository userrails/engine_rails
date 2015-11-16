# This migration comes from foo_bar (originally 20151116044501)
class CreateFooBarKitties < ActiveRecord::Migration
  def change
    create_table :foo_bar_kitties do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
