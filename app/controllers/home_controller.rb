class HomeController < ApplicationController
  def index
    @postagems = Postagem.take(10)
  end
end
