class Admin::InquiriesController < ApplicationController
  before_action :set_inquiry, only: [:show, :edit, :update, :destroy]

  # GET /admin/inquiries
  # GET /admin/inquiries.json
  def index
    @inquiries = Inquiry.includes(:segemnts).all
  end

  # GET /admin/inquiries/1
  # GET /admin/inquiries/1.json
  def show
  end

  # GET /admin/inquiries/new
  def new
    @inquiry = Inquiry.new
  end

  # GET /admin/inquiries/1/edit
  def edit
  end

  # POST /admin/inquiries
  # POST /admin/inquiries.json
  def create
    logger.info(params)
    @inquiry = Inquiry.new(inquiry_params)
    ###added post-railscast
    #@inquiry.segments.build


    respond_to do |format|
      if @inquiry.save
        #format.html { redirect_to [:admin, @inquiry], notice: 'Inquiry was successfully created.' }
        #format.json { render action: 'show', status: :created, location: @inquiry }
        format.html { redirect_to :controller => '/conquest', :action => 'success'}
        format.json { render action: 'show', status: :created, location: @inquiry }
      else
        format.html { render action: 'new' }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/inquiries/1
  # PATCH/PUT /admin/inquiries/1.json
  def update
    respond_to do |format|
      if @inquiry.update(inquiry_params)
        format.html { redirect_to [:admin, @inquiry], notice: 'Inquiry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/inquiries/1
  # DELETE /admin/inquiries/1.json
  def destroy
    @inquiry.destroy
    respond_to do |format|
      format.html { redirect_to admin_inquiries_url, notice: 'Inquiry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
      #@inquiry = Inquiry.where(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_params
      params.require(:inquiry).permit(:email, :suggested, segment_ids:[])
    end
end
