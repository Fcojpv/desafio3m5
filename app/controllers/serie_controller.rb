class SerieController < ApplicationController
  def index
    @series = Serie.all
  end

  def new
    @serie = Serie.new
  end

  def create
    @serie = Serie.new(serie_params)
    if @serie.save
      redirect_to series_path, notice: 'Serie creada exitosamente.'
    else
      render :new
    end
  end

  private

  def serie_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
