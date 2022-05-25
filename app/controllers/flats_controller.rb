class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.create(flats_params)
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flats_params)
    @flat.save
  end

  private

  def flats_params
    params.require(:flat).permit(:name, :address, :host, :description, :picture_url, :price_per_night, :number_of_guests)
  end
end
