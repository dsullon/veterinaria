class RequestDetailsController < ApplicationController
  before_action :set_request_detail, only: [:show, :edit, :update, :destroy]

  def index
    @request_details = RequestDetail.all
    respond_with(@request_details)
  end

  def show
    respond_with(@request_detail)
  end

  def new
    @request_detail = RequestDetail.new
    respond_with(@request_detail)
  end

  def edit
  end

  def create
    @request_detail = RequestDetail.new(request_detail_params)
    @request_detail.save
    respond_with(@request_detail)
  end

  def update
    @request_detail.update(request_detail_params)
    respond_with(@request_detail)
  end

  def destroy
    @request_detail.destroy
    respond_with(@request_detail)
  end

  private
    def set_request_detail
      @request_detail = RequestDetail.find(params[:id])
    end

    def request_detail_params
      params.require(:request_detail).permit(:request_id, :service_id, :pet_id, :comment)
    end
end
