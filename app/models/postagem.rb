class Postagem < ApplicationRecord
validates_presence_of :titulo, :conteudo, :photo_file_name
validates_length_of :conteudo, minimum: 10, allow_blank: false

end
