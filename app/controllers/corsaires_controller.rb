class CorsairesController < ApplicationController

  def index
    @corsaires = Corsaire.all
  end

  def show
    @corsaire = Corsaire.find(params[:id])
  end

  def new
    @corsaire = Corsaire.new
  end

  def create
    @corsaire = Corsaire.new(corsaire_params)
    if @corsaire.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @corsaire = Corsaire.find(params[:id])
  end

  def update
    @corsaire = Corsaire.find(params[:id])
    if @corsaire.update(corsaire_params)
      redirect_to @corsaire
    else
      render :edit
    end

  end

  def destroy
    @corsaire = Corsaire.find(params[:id])
    if @corsaire.destroy
      redirect_to root_path
    else
      render :edit
    end
  end

  private

    def corsaire_params
      params.require(:corsaire).permit(:first_name, :age)
    end


end
