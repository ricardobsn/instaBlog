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

require 'test_helper'

class PostagemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
