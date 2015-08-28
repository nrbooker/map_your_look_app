class CheekItemsController < ApplicationController
  def index
    @cheek_items = CheekItem.all
  end

  def show
    @cheek_item = CheekItem.find(params[:id])
  end

  def new
    @cheek_item = CheekItem.new
  end

  def create
    @cheek_item = CheekItem.new
    @cheek_item.store = params[:store]
    @cheek_item.brand = params[:brand]
    @cheek_item.color = params[:color]
    @cheek_item.cheek_id = params[:cheek_id]

    if @cheek_item.save
      redirect_to "/cheek_items", :notice => "Cheek item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @cheek_item = CheekItem.find(params[:id])
  end

  def update
    @cheek_item = CheekItem.find(params[:id])

    @cheek_item.store = params[:store]
    @cheek_item.brand = params[:brand]
    @cheek_item.color = params[:color]
    @cheek_item.cheek_id = params[:cheek_id]

    if @cheek_item.save
      redirect_to "/cheek_items", :notice => "Cheek item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @cheek_item = CheekItem.find(params[:id])

    @cheek_item.destroy

    redirect_to "/cheek_items", :notice => "Cheek item deleted."
  end
end
