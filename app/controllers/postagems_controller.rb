class PostagemsController < ApplicationController
  # chama a view por default no users new (caso não especificado)

  def index
    @postagems = Postagem.all
  end

  def show
    @postagem = Postagem.find(params[:id])
  end

  def new
    @postagem = Postagem.new
  end

  def create
    @postagem = Postagem.new(postagem_params)
    if @postagem.save
      redirect_to root_path
    else
      render action: :new
    end
  end


  def edit
    @postagem = Postagem.find(params[:id])
  end

  def update
    @postagem = Postagem.find(params[:id])
      if @postagem.update(postagem_params)
        redirect_to root_path
      else
        render action: :edit
      end
  end

  def destroy
    id = params[:id]
    Postagem.destroy id
    redirect_to root_path
  end

  private

  def postagem_params
    params.
    require(:postagem).
    permit(:titulo, :subtitulo, :conteudo, :usuario, :data)
  end

end
