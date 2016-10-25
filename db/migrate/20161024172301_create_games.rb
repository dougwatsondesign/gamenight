class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :type
      t.string :category
      t.string :weight
      t.string :age
      t.string :players
      t.string :table_size

      t.timestamps
    end
  end
end
