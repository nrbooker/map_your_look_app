class EyeItemsController < ApplicationController
  def index
    @eye_items = EyeItem.all
  end

  def show
    @eye_item = EyeItem.find(params[:id])
  end

  def new
    @eye_item = EyeItem.new
  end

  def create
    @eye_item = EyeItem.new
    @eye_item.store = params[:eye_item][:store]
    @eye_item.brand = params[:eye_item][:brand]
    @eye_item.color = params[:eye_item][:color]

    if @eye_item.save
      redirect_to "/eye_items", :notice => "Eye item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @eye_item = EyeItem.find(params[:id])
  end

  def update
    @eye_item = EyeItem.find(params[:id])

    @eye_item.store = params[:eye_item][:store]
    @eye_item.brand = params[:eye_item][:brand]
    @eye_item.color = params[:eye_item][:color]

    if @eye_item.save
      redirect_to "/eye_items", :notice => "Eye item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @eye_item = EyeItem.find(params[:id])

    @eye_item.destroy

    redirect_to "/eye_items", :notice => "Eye item deleted."
  end
end
