class StatusSelectsController < ApplicationController
  before_action :set_status_select, only: [:show, :edit, :update, :destroy]

  # GET /status_selects
  # GET /status_selects.json
  def index
    @status_selects = StatusSelect.all
  end

  # GET /status_selects/1
  # GET /status_selects/1.json
  def show
  end

  # GET /status_selects/new
  def new
    @status_select = StatusSelect.new
  end

  # GET /status_selects/1/edit
  def edit
  end

  # POST /status_selects
  # POST /status_selects.json
  def create
    @status_select = StatusSelect.new(status_select_params)

    respond_to do |format|
      if @status_select.save
        format.html { redirect_to @status_select, notice: 'Status select was successfully created.' }
        format.json { render action: 'show', status: :created, location: @status_select }
      else
        format.html { render action: 'new' }
        format.json { render json: @status_select.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_selects/1
  # PATCH/PUT /status_selects/1.json
  def update
    respond_to do |format|
      if @status_select.update(status_select_params)
        format.html { redirect_to @status_select, notice: 'Status select was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @status_select.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_selects/1
  # DELETE /status_selects/1.json
  def destroy
    @status_select.destroy
    respond_to do |format|
      format.html { redirect_to status_selects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_select
      @status_select = StatusSelect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_select_params
      params.require(:status_select).permit(:status, :status_type, :icon)
    end
end
