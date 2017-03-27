require 'test_helper'

class PostagemsControllerTest < ActionDispatch::IntegrationTest
    setup do
      @postagem = {"titulo":"abc","subtitulo":"abscdef"}
    end

    test "When you don't pass all params" do

      get postagem_path( {"titulo":"abc","subtitulo":"abscdef"})
      assert_response :not_found
    end
    #
    # test "should get new" do
    #   get new_postagem_path
    #   assert_response :success
    # end
    #
    # test "should get edit" do
    #   get edit_postagem_path(@postagem)
    #   assert_response :success
    # end

    # test "should destroy postagem" do
    #   assert_difference('Postagem.count', -1) do
    #     delete '/postagems/:id'(@postagem)
    #   end
    #   assert_redirected_to root_path
    # end

end
