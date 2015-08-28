class LooksController < ApplicationController
  def index
    @looks = Look.all

  end

  def show
    @look = Look.find(params[:id])
  end

  def new
    @look = Look.new
  end

  def create
    @look = Look.new(look_params)
    @look.update_attributes(user: current_user)
    if @look.save
      redirect_to "/looks", :notice => "Look created successfully."
    else
      render 'new'
    end
  end

  def edit
    @look = Look.find(params[:id])
  end

  def update
    @look = Look.find(params[:id])
    @look.update_attributes(look_params)

    if @look.save
      redirect_to "/looks", :notice => "Look updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @look = Look.find(params[:id])

    @look.destroy

    redirect_to "/looks", :notice => "Look deleted."
  end

  def look_params
    params.require(:look).permit(:category, :user, :notes, :used_on, :selfie)
  end
end
