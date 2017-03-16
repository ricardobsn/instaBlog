class Postagem < ApplicationRecord
validates_presence_of :titulo, :conteudo
validates_length_of :conteudo, minimum: 10, allow_blank: false

# def complete_name
#     "#{titulo}, #{conteudo}"
#   end

end
