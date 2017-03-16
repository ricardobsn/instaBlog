class PostagemsController < ApplicationController
  # chama a view por default no users new (caso não especificado)

  def show
    @postagem = Postagem.find(params[:id])
  end

  def new
    @postagem = Postagem.new
  end

  def create
    @postagem = Postagem.new(postagem_params)
    if @postagem.save
      redirect_to @postagem,
                  notice: 'Postagem criada com sucesso!'
    else
      render action: :new
    end
  end
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
  private

  def postagem_params
    params.
    require(:postagem).
    permit(:titulo, :subtitulo, :conteudo, :usuario, :data)
  end

end
