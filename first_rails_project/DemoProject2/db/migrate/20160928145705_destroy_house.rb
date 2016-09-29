class DestroyHouse < ActiveRecord::Migration
  def change
    drop_table :house

    create_table :houses do |t|
      t.text :address

      t.timestamps
    end

  end
end
