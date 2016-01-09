class Admin::SlidesController < ApplicationController
  include Rails.application.routes.url_helpers

  layout 'admin'

  def index
    @slides = Slide.all
  end

  def new
    @slide = Slide.new
  end

  def create
    @slide = Slide.new(slide_params)
    if @slide.save
      flash[:success] = "Cadastrado com Sucesso"
      redirect_to admin_slides_path
    else
      flash.now[:danger] = "Erro ao Cadastrar"
      render new
    end
  end

  def edit
    @slide = Slide.find(params[:id])
  end

  def destroy
    @slide = Slide.find(params[:id])
    if @slide.destroy
      flash[:success] = "Atualizado com sucesso"
      redirect_to admin_slides_path
    else
      flash[:danger] = "Ocorreu um Erro!"
      redirect_to admin_slides_path      
    end
  end

  def update
    @slide = Slide.find(params[:id])
    if @slide.update_attributes(slide_params)
      flash[:success] = "Atualizado com sucesso"
      redirect_to admin_slides_path
    else
      flash.now[:danger] = "Erro ao atualizar"
      render 'edit'
    end
  end

  private
  def slide_params
    params.require(:slide).permit(:description, :foto, :foto_file_name, :ranking, :active, :created_at, :updated_at)
  end
  
end