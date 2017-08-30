class ProductionsController < ApplicationController
  before_action :set_production, only: [:show, :edit, :update, :destroy]

  # GET /productions
  # GET /productions.json
  def index
    @productions = Production.all
  end

  # GET /productions/1
  # GET /productions/1.json
  def show
  end

  # GET /productions/new
  def new
    @production = Production.new
  end

  # GET /productions/1/edit
  def edit
  end

  # POST /productions
  # POST /productions.json
  def create
    @production = Production.new(production_params)
    @production.user = current_user
    @production.cage = Cage.find(5)
    @notification = Notification.new
    @notification.status = 2
    @notification.description = "Production Requested by user #{current_user.id} for mouse genome #{@production.mouse_genome}"
    @notification.production = @production
    @notification.save!

    respond_to do |format|
      if @production.save
        format.html { redirect_to @production, notice: 'Production was successfully created.' }
        format.json { render :show, status: :created, location: @production }
      else
        format.html { render :new }
        format.json { render json: @production.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productions/1
  # PATCH/PUT /productions/1.json
  def update
    respond_to do |format|
      if @production.update(production_params)
        format.html { redirect_to @production, notice: 'Production was successfully updated.' }
        format.json { render :show, status: :ok, location: @production }
      else
        format.html { render :edit }
        format.json { render json: @production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productions/1
  # DELETE /productions/1.json
  def destroy
    @production.destroy
    respond_to do |format|
      format.html { redirect_to productions_url, notice: 'Production was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def approve
    @production = Production.find(params[:id])
    @mouse = Mouse.new
    @to_cage = @production.cage
    @mouse.genome = @production.mouse_genome
    @mouse.parent_information = @production.mother_tag_number
    @mouse.tag_number = @production.mouse_tag_number
    @mouse.user = @production.user
    @mouse.sex = "Male"
    @mouse.date_of_birth = DateTime.now
    @mouse.save!
    @to_cage.mice << @mouse
    @production.destroy
    redirect_to productions_url, notice: 'Production approved.'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production
      @production = Production.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_params
      params.require(:production).permit(:mouse_genome, :mother_tag_number, :mouse_tag_number, :cage_id)
    end
end
