# app/controllers/documents_controller.rb
class DocumentsController < ApplicationController
  def index
    @documents = Document.all
    end

  def new
    @document = Document.new
  end
  
  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to @document, notice: 'Document was successfully created.'
    else
      render :new
    end
  end

  def show
    @document = Document.find(params[:id])
  end

  private

  def document_params
    params.require(:document).permit(:name, :name_cache, :custom_field)
  end
end
  