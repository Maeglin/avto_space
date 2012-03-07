class CreateMains < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
