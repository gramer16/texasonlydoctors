class SepticsController < ApplicationController
  before_action :set_septic, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:destroy, :edit]
  def search
    if params[:search].present?
      @septics = Septic.search(params[:search])
    else
      @septics = Septic.all
    end
  end


  def index
    @septics = Septic.all
  end

  def show
  end

  def new
    @septic = Septic.new
  end

  def edit
  end

  def create
    @septic = Septic.new(septic_params)
    respond_to do |format|
      if @septic.save
        format.html { redirect_to @septic, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @septic }
      else
        format.html { render :new }
        format.json { render json: @septic.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @septic.update(septic_params)
        format.html { redirect_to @septic, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @septic }
      else
        format.html { render :edit }
        format.json { render json: @septic.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @septic.destroy
    respond_to do |format|
      format.html { redirect_to septic_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
  end
end

  private
    def set_septic
      @septic = Septic.find(params[:id])
    end

    def septic_params
      params.require(:septic).permit(:company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email, :image)
    end
     def check_user
        unless current_user.admin?
         redirect_to root_url, alert: "Sorry, Only Ontario's Only Admin can Delete a Subscription"
    end
  end
end
