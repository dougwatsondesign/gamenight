class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :location
      t.date :date
      t.time :time
      t.string :snacks
      t.text :variation
      t.string :teach
      t.string :game

      t.timestamps
    end
  end
end
