require 'rails_helper'

# class PostagemsControllerSpec < ActionDispatch::IntegrationTest
#     setup do
#       @postagem = {"titulo":"abc","subtitulo":"abscdef"}
#     end
#
#     test "When you don't pass all params" do
#
#       get postagem_path( {"titulo":"abc","subtitulo":"abscdef"})
#       assert_response :not_found
#     end
#
#     test "should get new" do
#       get new_postagem_path
#       assert_response :success
#     end
#
#     test "should get edit" do
#       get edit_postagem_path(@postagem)
#       assert_response :success
#     end
#
#     test "should destroy postagem" do
#       assert_difference('Postagem.count', -1) do
#         delete '/postagems/:id'(@postagem)
#       end
#       assert_redirected_to root_path
#     end
#
# end

RSpec.describe PostagemsController do
  describe '#index' do
    context 'When index is empty' do
      let!(:postagem) do
        {}
      end
      before do
        get postagems_path, params: {}
      end
      it 'Does return status_code: 400' do
        expect(response).to have_http_status(:bad_request)
      end
    end

    context 'When exists postagem' do
      let!(:postagem) do
        {}
      end
      let(:params) do
        { titulo: '123', subtitulo: 'abcdefg', conteudo:"fasfafafaefaefaefaeae", photo_file_name:"foto.jpeg" }
      end

      before do
          get postagems_path, params: params
      end

      it 'Does return status_code: 400' do
        expect(response.status).to eq(1)
      end
    end
  end
  describe '#new' do
    context 'When has new postagem' do
      let!(:postagem) do
        {}
      end
      let(:params) do
        { titulo: '123', subtitulo: 'abcdefg', conteudo:"fasfafafaefaefaefaeae", photo_file_name:"foto.jpeg" }
      end

      before do
          get new_postagem_path, params: params
      end

      it 'Does return status_code: 201' do
        expect(response).to have_http_status(:created)
      end
    end
  end
end
