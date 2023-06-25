class PigeonsController < ApplicationController
  def index
    @pigeons = Pigeon.all
  end

  def show
    @pigeon = Pigeon.find(params[:id])
  end

  def new
    @pigeon = Pigeon.new
  end

  def create
    @pigeon = Pigeon.new(pigeon_params)
    if @pigeon.save
      redirect_to @pigeon
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pigeon = Pigeon.find(params[:id])
  end

  def update
    @pigeon = Pigeon.find(params[:id])
    if @pigeon.update(pigeon_params)
      redirect_to @pigeon
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pigeon = Pigeon.find(params[:id])
    @pigeon.destroy

    redirect_to root_path, status: :see_other
  end

  def pigeon_params
    params.require(:pigeon).permit(:name, :age, :cuteness, :softness)
  end
end
