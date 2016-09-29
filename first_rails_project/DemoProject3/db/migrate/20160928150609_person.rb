class Person < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :house_id

      t.timestamps
    end

    create_table :houses do |t|
      t.text :address

      t.timestamps
    end

  end
end
