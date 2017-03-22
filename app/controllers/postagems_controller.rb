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
    uploaded_io = params[:postagem][:picture]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    other_params = postagem_params
    other_params[:photo_file_name]= check_image_nil uploaded_io.original_filename
    @postagem = Postagem.new(other_params)
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


  def postagem_params
    params.
    require(:postagem).
    permit(:titulo, :subtitulo, :conteudo, :usuario, :data).
    except(:picture)
  end

  def check_image_nil(name)
    if name.empty?
      name = 'post-bg.jpg'
    end
    name
  end


end
