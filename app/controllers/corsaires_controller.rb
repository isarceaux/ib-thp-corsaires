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
      flash[:success] = "Bravo ! Nouveau Corsaire créé avec succés !"
      redirect_to @corsaire
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
      flash[:success] = "Bravo ! Nous avons pris en compte tes modifications !"
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
      params.require(:corsaire).permit(:first_name, :age, :likeness, :bio, :slack_handle, :github_handle)
    end


end
