class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.integer :clean_m
      t.integer :clean_n
      t.integer :clean_b
      t.integer :resto
      t.integer :defend
      t.integer :ceramic

      t.timestamps
    end
  end
end
