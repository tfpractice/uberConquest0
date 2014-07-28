class Admin::SegmentsController < ApplicationController
  before_action :set_segment, only: [:show, :edit, :update, :destroy]

  # GET /admin/segments
  # GET /admin/segments.json
  def index
    @segments = Segment.all
  end

  # GET /admin/segments/1
  # GET /admin/segments/1.json
  def show
  end

  # GET /admin/segments/new
  def new
    @segment = Segment.new
  end

  # GET /admin/segments/1/edit
  def edit
  end

  # POST /admin/segments
  # POST /admin/segments.json
  def create
    @segment = Segment.new(segment_params)

    respond_to do |format|
      if @segment.save
        format.html { redirect_to [:admin, @segment], notice: 'Segment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @segment }
      else
        format.html { render action: 'new' }
        format.json { render json: @segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/segments/1
  # PATCH/PUT /admin/segments/1.json
  def update
    respond_to do |format|
      if @segment.update(segment_params)
        format.html { redirect_to [:admin, @segment], notice: 'Segment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @segment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/segments/1
  # DELETE /admin/segments/1.json
  def destroy
    @segment.destroy
    respond_to do |format|
      format.html { redirect_to admin_segments_url, notice: 'Segment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segment
      @segment = Segment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def segment_params
      params.require(:segment).permit(:name, :geofenceCount, :counquestCount, :location, :dma, :deviceCount, :imageFilepath, :image)
    end
end
