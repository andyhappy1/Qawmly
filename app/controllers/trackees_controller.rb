class TrackeesController < ApplicationController
  before_action :set_trackee, only: [:show, :edit, :update, :destroy]

  # GET /trackees
  # GET /trackees.json
  def index
    @trackees = Trackee.all
  end

  # GET /trackees/1
  # GET /trackees/1.json
  def show
  end

  # GET /trackees/new
  def new
    @trackee = Trackee.new
  end

  # GET /trackees/1/edit
  def edit
  end

  # POST /trackees
  # POST /trackees.json
  def create
    @trackee = Trackee.new(trackee_params)

    respond_to do |format|
      if @trackee.save
        format.html { redirect_to @trackee, notice: 'Trackee was successfully created.' }
        format.json { render action: 'show', status: :created, location: @trackee }
      else
        format.html { render action: 'new' }
        format.json { render json: @trackee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trackees/1
  # PATCH/PUT /trackees/1.json
  def update
    respond_to do |format|
      if @trackee.update(trackee_params)
        format.html { redirect_to @trackee, notice: 'Trackee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @trackee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trackees/1
  # DELETE /trackees/1.json
  def destroy
    @trackee.destroy
    respond_to do |format|
      format.html { redirect_to trackees_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trackee
      @trackee = Trackee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trackee_params
      params.require(:trackee).permit(:name, :email)
    end
end
