class AddDataToPostagems < ActiveRecord::Migration[5.0]
  def change
    add_column :postagems, :data, :string
  end
end
