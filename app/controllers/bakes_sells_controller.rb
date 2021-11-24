class BakesSellsController < ApplicationController
  before_action :set_bakes_sell, only: %i[ show edit update destroy ]

  # GET /bakes_sells or /bakes_sells.json
  def index
    @bakes_sells = BakesSell.all
  end

  # GET /bakes_sells/1 or /bakes_sells/1.json
  def show
  end

  # GET /bakes_sells/new
  def new
    @bakes_sell = BakesSell.new
  end

  # GET /bakes_sells/1/edit
  def edit
  end

  # POST /bakes_sells or /bakes_sells.json
  def create
    @bakes_sell = BakesSell.new(bakes_sell_params)

    respond_to do |format|
      if @bakes_sell.save
        format.html { redirect_to @bakes_sell, notice: "Bakes sell was successfully created." }
        format.json { render :show, status: :created, location: @bakes_sell }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bakes_sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bakes_sells/1 or /bakes_sells/1.json
  def update
    respond_to do |format|
      if @bakes_sell.update(bakes_sell_params)
        format.html { redirect_to @bakes_sell, notice: "Bakes sell was successfully updated." }
        format.json { render :show, status: :ok, location: @bakes_sell }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bakes_sell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bakes_sells/1 or /bakes_sells/1.json
  def destroy
    @bakes_sell.destroy
    respond_to do |format|
      format.html { redirect_to bakes_sells_url, notice: "Bakes sell was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bakes_sell
      @bakes_sell = BakesSell.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bakes_sell_params
      params.require(:bakes_sell).permit(:name, :price, :date_sell, :quantity)
    end
end
