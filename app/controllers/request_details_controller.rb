class RequestDetailsController < ApplicationController
  layout 'plantilla'
  before_action :set_request_detail, only: [:show, :edit, :update, :destroy]

  def index
    @request_details = RequestDetail.all
    #respond_with(@request_details)
  end

  def show
    #respond_with(@request_detail)
  end

  def new
    @request_detail = RequestDetail.new
    #respond_with(@request_detail)
  end

  def edit
  end

  def create
    @request_detail = RequestDetail.new(request_detail_params)
    
    respond_to do |format|
      if @request_detail.save
        format.html { redirect_to action: "index" }
        #format.html { redirect_to @request_detail, notice: 'request was successfully created.' }
        format.json { render :show, status: :created, location: @request_detail }
      else
        format.html { render :new }
        format.json { render json: @request_detail.errors, status: :unprocessable_entity }
      end
    #respond_with(@request_detail)
  end
end

  
  def update
    #@request_detail.update(request_detail_params)
    #respond_with(@request_detail)


    respond_to do |format|
      if @request_detail.update(request_detail_params)
        format.html { redirect_to action: "index" }
        #format.html { redirect_to @request_detail, notice: 'request was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_detail }
      else
        format.html { render :edit }
        format.json { render json: @request_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @request_detail.destroy
    #respond_with(@request_detail)

    respond_to do |format|
      format.html { redirect_to action: "index" }
      #format.html { redirect_to request_detail_url, notice: 'request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_request_detail
      @request_detail = RequestDetail.find(params[:id])
    end

    def request_detail_params
      params.require(:request_detail).permit(:request_id, :service_id, :pet_id, :comment)
    end
end
