class RequestsController < ApplicationController
  layout 'plantilla'
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  def index
    @requests = Request.where(user: current_user)
    #@requests = Request.all
    #respond_with(@requests)
  end

  def show
    #respond_with(@request)
  end

  def new
    @request = Request.new
    #respond_with(@request)
  end

  def edit
  end

  def create
    @request = Request.new(request_params)
     
     respond_to do |format|
      if @request.save
        format.html { redirect_to action: "index" }
        #format.html { redirect_to @request, notice: 'request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
  end  
  #respond_with(@request)
end

  def update
    #@request.update(request_params)
    #respond_with(@request)

    respond_to do |format|
      if @request.update(request_params)
        format.html { redirect_to action: "index" }
        #format.html { redirect_to @request, notice: 'request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @request.destroy
    #respond_with(@request)



    respond_to do |format|
      format.html { redirect_to action: "index" }
      #format.html { redirect_to requests_url, notice: 'request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_request
      @request = Request.find(params[:id])
    end

    def request_params
      params.require(:request).permit(:requestDate, :serviceType_id, :address, :proposeDate, :proposeHour, :isPending, :isConfirmed, :comment, :vet_id, :user_id, request_details: [:id, :service_id, :pet_id, :done, :_destroy])
    end
end