class CreatePostagems < ActiveRecord::Migration[5.0]
  def change
    create_table :postagems do |t|
      t.string :titulo
      t.text :conteudo

      t.timestamps
    end
  end
end
