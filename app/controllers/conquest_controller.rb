class ConquestController < ApplicationController
before_action :set_category, :set_segment

  def index
  	@categories = Category.includes(:segments).all
  	@segments = Segment.all

  end

  def show

  	@categories = Category.includes(:segments).all
  	@segments = Segment.all
  end

  def signup
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
end
