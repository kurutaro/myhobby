class CreateMyCars < ActiveRecord::Migration[5.1]
  def change
    create_table :my_cars do |t|
      t.string :name
      t.text :description
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
