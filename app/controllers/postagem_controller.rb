class PostagemController < ApplicationController
  # chama a view por default no users new (caso não especificado)

  def show
    @postagem = Postagem.find(params[:id])
  end

  def new
    @postagem = Postagem.new
  end

  # def create
  #   @postagem = User.new(user_params)
  #   if @postagem.save
  #     redirect_to @user,
  #                 notice: 'Cadastro criado com sucesso!'
  #   else
  #     render action: :new
  #   end
  # end
  #
  # def edit
  #   @user = User.find(params[:id])
  # end
  #
  # def update
  #   @user = User.find(params[:id])
  #     if @user.update(user_params)
  #       redirect_to @user,
  #       notice: 'Cadastro atualizado com sucesso!'
  #     else
  #       render action: :edit
  #     end
  # end
  #
  # private
  #
  # def user_params
  #   params.
  #   require(:user).
  #   permit(:email, :full_name, :location, :password,
  #             :password_confirmation, :bio)
  # end

end
