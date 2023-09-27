class DocumentaryfilmsController < ApplicationController

  def index
    @documentaryfilms = DocumentaryFilm.all
  end

  def create
    @documentaryfilm = DocumentaryFilm.new(documentaryfilms_params)

    if @documentaryfilm.save
      redirect_to documentaryfilms_index_path
    else
      render :new
    end
  end

  def new
    @documentaryfilm = DocumentaryFilm.new
  end

  private

  def documentaryfilms_params
    params.require(:documentaryfilms).permit(:name, :synopsis, :director)
  end
end
