class ArchivesController < ApplicationController
  # before_action :set_archive, only: %i[ show edit update destroy ]
  # before_action :get_archive_types, only: [:new, :create]
  skip_before_action :verify_authenticity_token
  # GET /archives or /archives.json
  def index
    @archives = Archive.all
  end

  # GET /archives/1 or /archives/1.json
  def show
  end

  # GET /archives/new
  def new
		@archive = Archive.new
 
  end

  # GET /archives/1/edit
  def edit
  end

  # POST /archives or /archives.json
  def create
    debugger
    @archive = Archive.new(archive_params)

    respond_to do |format|
      if @archive.save
        format.html { redirect_to archive_url(@archive), notice: "Archive was successfully created." }
        format.json { render :show, status: :created, location: @archive }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @archive.errors, status: :unprocessable_entity }
      end
    end
  end


  # def get_archive_types
	# 	@archive_type = ArchiveType.where(ancestry: nil)
	# 	@category = ArchiveType.find(params[:archive_type_id]).children if params[:archive_type_id].present?
	# 	@sub_category = ArchiveType.find(params[:category]).children if params[:category].present?


	# 	@selected_archive_type = ArchiveType.find(params[:archive_type_id]).archive_type if params[:archive_type_id].present?
	# 	@selected_sub_category = ArchiveType.find(params[:sub_category]) if params[:sub_category].present?

	# 	@form_type = @selected_archive_type if @sub_category.count.equal?(0) rescue ""
	# 	@form_type = @selected_archive_type if @selected_sub_category  rescue ""


	# end

  # PATCH/PUT /archives/1 or /archives/1.json
  def update
    respond_to do |format|
      if @archive.update(archive_params)
        format.html { redirect_to archive_url(@archive), notice: "Archive was successfully updated." }
        format.json { render :show, status: :ok, location: @archive }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @archive.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archives/1 or /archives/1.json
  def destroy
    @archive.destroy

    respond_to do |format|
      format.html { redirect_to archives_url, notice: "Archive was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archive
      @archive = Archive.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def archive_params
      params.require(:archive).permit(:title, :archive_type_id, :archive_data => [:value_1, :value_2, :value_3])
    end
end
