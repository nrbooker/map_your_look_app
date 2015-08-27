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
    @look = Look.new
    @look.category = params[:category]
    @look.user_id = params[:user_id]
    @look.notes = params[:notes]
    @look.used_on = params[:used_on]
    @look.selfie = params[:selfie]

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

    @look.category = params[:category]
    @look.user_id = params[:user_id]
    @look.notes = params[:notes]
    @look.used_on = params[:used_on]
    @look.selfie = params[:selfie]

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
end
