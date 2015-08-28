class LipItemsController < ApplicationController
  def index
    @lip_items = LipItem.all
  end

  def show
    @lip_item = LipItem.find(params[:id])
  end

  def new
    @lip_item = LipItem.new
  end

  def create
    @lip_item = LipItem.new
    @lip_item.store = params[:store]
    @lip_item.brand = params[:brand]
    @lip_item.color = params[:color]
    @lip_item.lip_id = params[:lip_id]

    if @lip_item.save
      redirect_to "/lip_items", :notice => "Lip item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @lip_item = LipItem.find(params[:id])
  end

  def update
    @lip_item = LipItem.find(params[:id])

    @lip_item.store = params[:store]
    @lip_item.brand = params[:brand]
    @lip_item.color = params[:color]
    @lip_item.lip_id = params[:lip_id]

    if @lip_item.save
      redirect_to "/lip_items", :notice => "Lip item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lip_item = LipItem.find(params[:id])

    @lip_item.destroy

    redirect_to "/lip_items", :notice => "Lip item deleted."
  end
end
