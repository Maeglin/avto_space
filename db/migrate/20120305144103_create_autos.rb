class CreateAutos < ActiveRecord::Migration
  def change
    create_table :autos do |t|
      t.string :name
      t.integer :type_id

      t.timestamps
    end
  end
end
