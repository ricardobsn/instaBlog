class AddSubtituloToPostagems < ActiveRecord::Migration[5.0]
  def change
    add_column :postagems, :subtitulo, :string
  end
end
