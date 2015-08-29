class EyesController < ApplicationController
  def index
    @eyes = Eye.all
  end

  def show
    @eye = Eye.find(params[:id])
  end

  def new
    @eye = Eye.new
  end

  def create

    @look = Look.find(params["look_id"].to_i)
    @eye_item = EyeItem.find(params["eye"]["id"].to_i)
    @eye = Eye.new(look: @look, eye_item: @eye_item)
    # @eye.store = params[:store]
    # @eye.brand = params[:brand]
    # @eye.color = params[:color]

    if @eye.save
      redirect_to look_path(@look), :notice => "Eye created successfully."
    else
      render 'new'
    end
  end

  def edit
    @eye = Eye.find(params[:id])
  end

  def update
    @eye = Eye.find(params[:id])

    @eye.look_id = params[:look_id]
    # @eye.store = params[:store]
    # @eye.brand = params[:brand]
    # @eye.color = params[:color]

    # if @eye.save
    #   redirect_to "/eyes", :notice => "Eye updated successfully."
    # else
    #   render 'edit'
    # end
  end

  def destroy
    @eye = Eye.find(params[:id])
    @eye.destroy

    redirect_to "/eyes", :notice => "Eye deleted."
  end
end
