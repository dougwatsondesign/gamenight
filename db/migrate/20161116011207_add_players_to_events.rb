class AddPlayersToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :players, :integer
  end
end
