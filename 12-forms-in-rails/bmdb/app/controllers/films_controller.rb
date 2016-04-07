class FilmsController < ApplicationController
  def new
    @film = Film.new
  end

  def create
    # params = { ..., film: { title: "Titanic", director: "James Cameron", year: 1999 } }

    # BAD: Film.new(title: params[:film][:title], director: params[:film][:director])

    # 1. Setup a new Film object with the data from the form
    @film = Film.new(film_params)

    # 2. Save that new Film object to the database
    if @film.save
      # 3a. If it saved properly, do something
      redirect_to new_film_path
    else
      # 3b. If it didn't save, do something else
      render :new
    end
  end

  private
  def film_params
    params.require(:film).permit(:title, :director, :year)
  end
end
