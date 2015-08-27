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
    @lip = Lip.new
    @lip.look_id = params[:look_id]
    @lip.store = params[:store]
    @lip.brand = params[:brand]
    @lip.color = params[:color]

    if @lip.save
      redirect_to "/lips", :notice => "Lip created successfully."
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
    @lip.store = params[:store]
    @lip.brand = params[:brand]
    @lip.color = params[:color]

    if @lip.save
      redirect_to "/lips", :notice => "Lip updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @lip = Lip.find(params[:id])

    @lip.destroy

    redirect_to "/lips", :notice => "Lip deleted."
  end
end
