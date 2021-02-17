class ShoppingitemsController < ApplicationController
  before_action :set_shoppingitem, only: %i[ show edit update destroy ]

  # GET /shoppingitems or /shoppingitems.json
  def index
    @shoppingitems = Shoppingitem.all
  end

  # GET /shoppingitems/1 or /shoppingitems/1.json
  def show
  end

  # GET /shoppingitems/new
  def new
    @shoppingitem = Shoppingitem.new
  end

  # GET /shoppingitems/1/edit
  def edit
  end

  # POST /shoppingitems or /shoppingitems.json
  def create
    @shoppingitem = Shoppingitem.new(shoppingitem_params)

    respond_to do |format|
      if @shoppingitem.save
        format.html { redirect_to @shoppingitem, notice: "Shoppingitem was successfully created." }
        format.json { render :show, status: :created, location: @shoppingitem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shoppingitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoppingitems/1 or /shoppingitems/1.json
  def update
    respond_to do |format|
      if @shoppingitem.update(shoppingitem_params)
        format.html { redirect_to @shoppingitem, notice: "Shoppingitem was successfully updated." }
        format.json { render :show, status: :ok, location: @shoppingitem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shoppingitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoppingitems/1 or /shoppingitems/1.json
  def destroy
    @shoppingitem.destroy
    respond_to do |format|
      format.html { redirect_to shoppingitems_url, notice: "Shoppingitem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoppingitem
      @shoppingitem = Shoppingitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shoppingitem_params
      params.require(:shoppingitem).permit(:email, :item_name, :price, :item_number)
    end
end
