class ConquestController < ApplicationController
before_action :set_category, :set_segment
#before_action :set_inquiry, only: [:show, :edit, :update, :destroy]


  def index
  	@categories = Category.includes(:segments).all
  	@segments = Segment.all

  end

  def show

  	@categories = Category.includes(:segments).all
  	@segments = Segment.all
  end

  def hello
  end

  def signup
      @inquiry = Inquiry.new()
      #render "inquiries/new"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.includes(:segments).where(id: params[:id])
    end
    def category_params
      params.require(:category).permit(:name, :featured)
    end

    def set_segment
      @segment = Segment.where(id: params[:id])
    end

    def segment_params
      params.require(:segment).permit(:name, :geofenceCount, :counquestCount, :location, :dma, :deviceCount, :imageFilepath)
    end

    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

    def inquiry_params
      params.require(:inquiry).permit(:email, :suggested)
    end
end
