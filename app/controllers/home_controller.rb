class HomeController < ApplicationController
  def index
    @postagems = Postagem.all
  end
end
