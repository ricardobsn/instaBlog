class AddUsuarioToPostagems < ActiveRecord::Migration[5.0]
  def change
    add_column :postagems, :usuario, :string
  end
end
