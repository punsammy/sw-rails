class FilmsController < ApplicationController
  def index
    @films = Film.all
    @films = Film.new
  end

  def create
    @film = Film.new(film_params)

    respond_to do |format|
      format.html do
        if @film.save
          redirect_to films_path
        else
          render :index
        end
      end

      format.json do
        if @film.save
          render json: @film
          # render json: { film: @film, foo: 1 }
          # can only render once
        else
          render :index
          # can also render json error message
        end
      end
    end
  end

  private
  def films_params
    params.require(:film).permit(:title)
  end
end
