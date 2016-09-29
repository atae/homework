class People < ActiveRecord::Migration
  def change
    create_table :person do |t|
      t.string :name
      t.integer :house_id

      t.timestamps
      

    end
  end
end
