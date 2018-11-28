class AddUrlToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :url, :string
  end
end
