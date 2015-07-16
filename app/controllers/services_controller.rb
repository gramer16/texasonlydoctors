class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :check_user, only: [:destroy, :edit]
  
  def search
    if params[:search].present?
       @services = Service.search(params[:search])
    else
       @services = Service.all
    end
  end


  def index
    @services = Service.where(:service_type => ["Cement and Concrete"]) if :service_type.present?
    @services = Service.where(:service_type => ["Siding and Stucco"]) if :service_type.present?
    @services = Service.where(:service_type => ["Appliance Sale"]) if :service_type.present?
    @services = Service.where(:service_type => ["Builders"]) if :service_type.present?
    @services = Service.where(:service_type => ["Appliance Repair"]) if :service_type.present?
  end

  def show
    @services = Service.where(servicetype_id: @service.service_type)
  end

  def new
    @service = Service.new
  end

  def edit
  end

  # POST /commercialpropertiesforsales
  # POST /commercialpropertiesforsales.json
  def create
    @service = Service.new(service_params)
    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commercialpropertiesforsales/1
  # PATCH/PUT /commercialpropertiesforsales/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commercialpropertiesforsales/1
  # DELETE /commercialpropertiesforsales/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to service_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:service_type, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :image)
    end

    def check_user
      unless current_user.admin?
        redirect_to root_url, alert: "Sorry, this service just can be post by the Website Administrator"
      end
    end
end



 

  
