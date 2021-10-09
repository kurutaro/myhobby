class MyCarsController < ApplicationController
  before_action :set_my_car, only: [:show, :edit, :update, :destroy]

  # GET /my_cars
  # GET /my_cars.json
  def index
    @my_cars = MyCar.all
  end

  # GET /my_cars/1
  # GET /my_cars/1.json
  def show
  end

  # GET /my_cars/new
  def new
    @my_car = MyCar.new
  end

  # GET /my_cars/1/edit
  def edit
  end

  # POST /my_cars
  # POST /my_cars.json
  def create
    @my_car = MyCar.new(my_car_params)

    respond_to do |format|
      if @my_car.save
        format.html { redirect_to @my_car, notice: 'My car was successfully created.' }
        format.json { render :show, status: :created, location: @my_car }
      else
        format.html { render :new }
        format.json { render json: @my_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_cars/1
  # PATCH/PUT /my_cars/1.json
  def update
    respond_to do |format|
      if @my_car.update(my_car_params)
        format.html { redirect_to @my_car, notice: 'My car was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_car }
      else
        format.html { render :edit }
        format.json { render json: @my_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_cars/1
  # DELETE /my_cars/1.json
  def destroy
    @my_car.destroy
    respond_to do |format|
      format.html { redirect_to my_cars_url, notice: 'My car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_car
      @my_car = MyCar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_car_params
      params.require(:my_car).permit(:name, :description, :date, :user_id)
    end
end
