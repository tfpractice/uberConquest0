class ConquestController < ApplicationController
before_action :set_category, :set_segment
#before_action :set_inquiry, only: [:show, :edit, :update, :destroy]


  def index
  	@categories = Category.includes(:segments).all
  	@segments = Segment.includes(:categories).all
    @batchedSegments = Segment.find_each(batch_size: 5)


  end

  def show

  	@categories = Category.includes(:segments).all
  	@segments = Segment.includes(:categories).all
  end

  def hello
  end

  def signup
    Rails.logger.info(params)
      @inquiry = Inquiry.new
          ###added post-railscast

      #@inquiry.segments.build
      
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
      #@segment = Segment.find(params[:id])
    end

    def segment_params
      params.require(:segment).permit(:name, :geofenceCount, :counquestCount, :location, :dma, :deviceCount, :imageFilepath)
    end

    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
      #@inquiry = Inquiry.where(id: params[:id])
    end

    def inquiry_params
      params.require(:inquiry).permit(:email, :suggested, segment_ids:[])
    end
end
