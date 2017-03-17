class HomeController < ApplicationController
  def index
    @postagems = Postagem.take(8)
  end
end
