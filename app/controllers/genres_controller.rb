class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :update, :edit, :destroy]
  # before_action :genre_params

  def index
    @genres = Genre.all
    render component: "Genres", props: {genres: @genres}
  end

  def show
    render component: "Genre", props: {genre: @genre}
  end

  def new
    render component: "GenreNew"
  end

  def create
    @genre = genre.new(genre_params)
    if(@genre.save)
      redirect_to #idk
    else
      
    end
  end

  def edit
    render component: "GenreEdit", props: {genre: @genre}
  end

  def update
    if @genre.update(genre_params)
      redirect_to #idk
      else
    end
  end
  
  def destroy
    @genre.destroy
    redirect_to #idk
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:name)
  end

end
