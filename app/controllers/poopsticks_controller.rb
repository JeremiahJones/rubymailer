class PoopsticksController < ApplicationController
  before_action :set_poopstick, only: [:show, :edit, :update, :destroy]

  # GET /poopsticks
  # GET /poopsticks.json
  def index
    @poopsticks = Poopstick.all
  end

  # GET /poopsticks/1
  # GET /poopsticks/1.json
  def show
  end

  # GET /poopsticks/new
  def new
    @poopstick = Poopstick.new
  end

  # GET /poopsticks/1/edit
  def edit
  end

  # POST /poopsticks
  # POST /poopsticks.json
  def create
    @poopstick = Poopstick.new(poopstick_params)

    respond_to do |format|
      if @poopstick.save
        format.html { redirect_to @poopstick, notice: 'Poopstick was successfully created.' }
        format.json { render :show, status: :created, location: @poopstick }
      else
        format.html { render :new }
        format.json { render json: @poopstick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poopsticks/1
  # PATCH/PUT /poopsticks/1.json
  def update
    respond_to do |format|
      if @poopstick.update(poopstick_params)
        format.html { redirect_to @poopstick, notice: 'Poopstick was successfully updated.' }
        format.json { render :show, status: :ok, location: @poopstick }
      else
        format.html { render :edit }
        format.json { render json: @poopstick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poopsticks/1
  # DELETE /poopsticks/1.json
  def destroy
    @poopstick.destroy
    respond_to do |format|
      format.html { redirect_to poopsticks_url, notice: 'Poopstick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poopstick
      @poopstick = Poopstick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poopstick_params
      params.require(:poopstick).permit(:name, :age)
    end
end
