class CheeksController < ApplicationController
  def index
    @cheeks = Cheek.all
  end

  def show
    @cheek = Cheek.find(params[:id])
  end

  def new
    @cheek = Cheek.new
  end

  def create

    @look = Look.find(params["look_id"].to_i)
    @cheek_item = CheekItem.find(params["cheek"]["id"].to_i)
    @cheek = Cheek.new(look: @look, cheek_item: @cheek_item)
    # @cheek.store = params[:store]
    # @cheek.brand = params[:brand]
    # @cheek.color = params[:color]

    if @cheek.save
      redirect_to look_path(@look), :notice => "Cheek created successfully."
    else
      render 'new'
    end
  end

  def edit
    @cheek = Cheek.find(params[:id])
  end

  def update
    @cheek = Cheek.find(params[:id])

    @cheek.look_id = params[:look_id]
    # @cheek.store = params[:store]
    # @cheek.brand = params[:brand]
    # @cheek.color = params[:color]

    # if @cheek.save
    #   redirect_to "/cheeks", :notice => "Cheek updated successfully."
    # else
    #   render 'edit'
    # end
  end

  def destroy
    @cheek = Cheek.find(params[:id])
    @cheek.destroy

    redirect_to "/cheeks", :notice => "Cheek deleted."
  end
end
