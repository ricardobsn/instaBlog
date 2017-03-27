require 'rails_helper'
# == Schema Information
#
# Table name: postagems
#
#  id                 :integer          not null, primary key
#  titulo             :string
#  conteudo           :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  subtitulo          :string
#  usuario            :string
#  data               :string
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

  #   t.string   "titulo"
  #   t.text     "conteudo"
  #   t.datetime "created_at",         null: false
  #   t.datetime "updated_at",         null: false
  #   t.string   "subtitulo"
  #   t.string   "usuario"
  #   t.string   "data"
  #   t.string   "photo_file_name"

RSpec.describe Postagem, type: :model do

  describe 'Fields' do

    it do
      is_expected.to have_db_column(:titulo).of_type(:string).with_options(null: false)
    end
  end
end
