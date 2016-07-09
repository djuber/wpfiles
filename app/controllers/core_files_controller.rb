class CoreFilesController < ApplicationController
  before_action :set_core_file, only: [:show, :edit, :update, :destroy]

  # GET /core_files
  # GET /core_files.json
  def index
    @core_files = CoreFile.all
  end

  # GET /core_files/1
  # GET /core_files/1.json
  def show
  end

  # GET /core_files/new
  def new
    @core_file = CoreFile.new
  end

  # GET /core_files/1/edit
  def edit
  end

  # POST /core_files
  # POST /core_files.json
  def create
    @core_file = CoreFile.new(core_file_params)

    respond_to do |format|
      if @core_file.save
        format.html { redirect_to @core_file, notice: 'Core file was successfully created.' }
        format.json { render :show, status: :created, location: @core_file }
      else
        format.html { render :new }
        format.json { render json: @core_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /core_files/1
  # PATCH/PUT /core_files/1.json
  def update
    respond_to do |format|
      if @core_file.update(core_file_params)
        format.html { redirect_to @core_file, notice: 'Core file was successfully updated.' }
        format.json { render :show, status: :ok, location: @core_file }
      else
        format.html { render :edit }
        format.json { render json: @core_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core_files/1
  # DELETE /core_files/1.json
  def destroy
    @core_file.destroy
    respond_to do |format|
      format.html { redirect_to core_files_url, notice: 'Core file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_file
      @core_file = CoreFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def core_file_params
      params.require(:core_file).permit(:file_name, :mdsum, :size, :content)
    end
end
