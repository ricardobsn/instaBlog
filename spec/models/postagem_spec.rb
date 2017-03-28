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

RSpec.describe Postagem, type: :model do

  describe 'Fields' do

    it do
      is_expected.to have_db_column(:titulo).of_type(:string).with_options(null: true)
    end

    it do
      is_expected.to have_db_column(:conteudo).of_type(:text).with_options(null: true)
    end

    it do
      is_expected.to have_db_column(:subtitulo).of_type(:string).with_options(null: true)
    end

    it do
      is_expected.to have_db_column(:usuario).of_type(:string).with_options(null: true)
    end

    it do
      is_expected.to have_db_column(:photo_file_name).of_type(:string).with_options(null: true)
    end
  end
end
