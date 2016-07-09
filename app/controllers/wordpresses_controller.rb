class WordpressesController < ApplicationController
  before_action :set_wordpress, only: [:show, :edit, :update, :destroy]

  # GET /wordpresses
  # GET /wordpresses.json
  def index
    @wordpresses = Wordpress.all
  end

  # GET /wordpresses/1
  # GET /wordpresses/1.json
  def show
  end

  # GET /wordpresses/new
  def new
    @wordpress = Wordpress.new
  end

  # GET /wordpresses/1/edit
  def edit
  end

  # POST /wordpresses
  # POST /wordpresses.json
  def create
    @wordpress = Wordpress.new(wordpress_params)

    respond_to do |format|
      if @wordpress.save
        format.html { redirect_to @wordpress, notice: 'Wordpress was successfully created.' }
        format.json { render :show, status: :created, location: @wordpress }
      else
        format.html { render :new }
        format.json { render json: @wordpress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wordpresses/1
  # PATCH/PUT /wordpresses/1.json
  def update
    respond_to do |format|
      if @wordpress.update(wordpress_params)
        format.html { redirect_to @wordpress, notice: 'Wordpress was successfully updated.' }
        format.json { render :show, status: :ok, location: @wordpress }
      else
        format.html { render :edit }
        format.json { render json: @wordpress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wordpresses/1
  # DELETE /wordpresses/1.json
  def destroy
    @wordpress.destroy
    respond_to do |format|
      format.html { redirect_to wordpresses_url, notice: 'Wordpress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wordpress
      @wordpress = Wordpress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wordpress_params
      params.require(:wordpress).permit(:version, :release_date)
    end
end
