class House < ActiveRecord::Migration
  def change
    drop_table :house
  end
end
