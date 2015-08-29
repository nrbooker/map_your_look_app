class LipsController < ApplicationController
  def index
    @lips = Lip.all
  end

  def show
    @lip = Lip.find(params[:id])
  end

  def new
    @lip = Lip.new
  end

  def create

    @look = Look.find(params["look_id"].to_i)
    @lip_item = LipItem.find(params["lip"]["id"].to_i)
    @lip = Lip.new(look: @look, lip_item: @lip_item)
    # @lip.store = params[:store]
    # @lip.brand = params[:brand]
    # @lip.color = params[:color]

    if @lip.save
      redirect_to look_path(@look), :notice => "Lip created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lip = Lip.find(params[:id])
  end

  def update
    @lip = Lip.find(params[:id])

    @lip.look_id = params[:look_id]
    # @lip.store = params[:store]
    # @lip.brand = params[:brand]
    # @lip.color = params[:color]

    # if @lip.save
    #   redirect_to "/lips", :notice => "Lip updated successfully."
    # else
    #   render 'edit'
    # end
  end

  def destroy
    @lip = Lip.find(params[:id])
    @lip.destroy

    redirect_to "/lips", :notice => "Lip deleted."
  end
end
