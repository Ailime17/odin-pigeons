class PigeonsController < ApplicationController
  def index
    @pigeons = Pigeon.all

    respond_to do |f|
      f.html
      f.json { render json: @pigeons }
    end
  end

  def show
    @pigeon = Pigeon.find(params[:id])

    respond_to do |f|
      f.html
      f.json { render json: @pigeon }
    end
  end

  def new
    @pigeon = Pigeon.new
  end

  def create
    @pigeon = Pigeon.new(pigeon_params)
    if @pigeon.save
      flash[:success] = "Successfully created a new pigeon"
      redirect_to @pigeon
    else
      flash.now[:error] = "LOL! There are errors in your birb form you potato!"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @pigeon = Pigeon.find(params[:id])
  end

  def update
    @pigeon = Pigeon.find(params[:id])
    if @pigeon.update(pigeon_params)
      flash[:success] = "Successfully updated the pigeon"
      redirect_to @pigeon
    else
      flash.now[:error] = "LOL! There are errors in your birb form you potato!"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @pigeon = Pigeon.find(params[:id])
    @pigeon.destroy

    flash[:success] = "Successfully deleted the pigeon"
    redirect_to root_path, status: :see_other
  end

  def pigeon_params
    params.require(:pigeon).permit(:name, :age, :cuteness, :softness)
  end
end
