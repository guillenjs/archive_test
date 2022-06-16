class ArchiveTypesController < ApplicationController
  before_action :set_archive_type, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  def subcategories
    @children = ArchiveType.find(params[:id]).children
    render :json => @children
  end

  # GET /archive_types or /archive_types.json
  def index
    @archive_types = ArchiveType.all
  end

  # GET /archive_types/1 or /archive_types/1.json
  def show
  end

  # GET /archive_types/new
  def new
    @archive_type = ArchiveType.new
  end

  # GET /archive_types/1/edit
  def edit
  end

  # POST /archive_types or /archive_types.json
  def create
    @archive_type = ArchiveType.new(archive_type_params)

    respond_to do |format|
      if @archive_type.save
        format.html { redirect_to archive_type_url(@archive_type), notice: "Archive type was successfully created." }
        format.json { render :show, status: :created, location: @archive_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @archive_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archive_types/1 or /archive_types/1.json
  def update
    respond_to do |format|
      if @archive_type.update(archive_type_params)
        format.html { redirect_to archive_type_url(@archive_type), notice: "Archive type was successfully updated." }
        format.json { render :show, status: :ok, location: @archive_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @archive_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archive_types/1 or /archive_types/1.json
  def destroy
    @archive_type.destroy

    respond_to do |format|
      format.html { redirect_to archive_types_url, notice: "Archive type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archive_type
      @archive_type = ArchiveType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def archive_type_params
      params.require(:archive_type).permit(:archive_type, :ancestry)
    end
end
