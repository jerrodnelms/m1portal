class SurgeryDocsController < ApplicationController
  before_action :set_surgery_doc, only: [:show, :edit, :update, :destroy]

  # GET /surgery_docs
  def index
    @surgery_docs = SurgeryDoc.all
  end

  # GET /surgery_docs/1
  def show
  end

  # GET /surgery_docs/new
  def new
    @surgery_doc = SurgeryDoc.new
  end

  # GET /surgery_docs/1/edit
  def edit
  end

  # POST /surgery_docs
  def create
    @surgery_doc = SurgeryDoc.new(surgery_doc_params)

    if @surgery_doc.save
      redirect_to @surgery_doc, notice: 'Surgery doc was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surgery_docs/1
  def update
    if @surgery_doc.update(surgery_doc_params)
      redirect_to @surgery_doc, notice: 'Surgery doc was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surgery_docs/1
  def destroy
    @surgery_doc.destroy
    redirect_to surgery_docs_url, notice: 'Surgery doc was successfully destroyed.'
  end

  def import
    SurgeryDoc.import(params[:file])
    redirect_to surgery_docs_path, notice: 'Surgery doc imported successfully'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_surgery_doc
      @surgery_doc = SurgeryDoc.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def surgery_doc_params
      params.require(:surgery_doc).permit(:name, :surgery_type_id)
    end
end
