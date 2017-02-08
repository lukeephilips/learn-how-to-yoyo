class SectionsController < ApplicationController
  def index
    @sections = Section.order(:section_number)

  end

  def show
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.find(params[:id])
  end

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @chapters = Chapter.all
    @section = @chapter.sections.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice]="You added a section!"
      redirect_to chapters_path
    else
      flash[:alert]="You didn't add the section... keep practicing!"
      render :new
    end
  end

  def edit
    @section = Section.find(params[:id])
    @chapters = Chapter.all
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(section_params)
      flash[:notice]="You added a section!"
      redirect_to chapters_path
    else
      flash[:alert]="You didn't add the section... keep practicing!"
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to chapters_path
  end

  private
  def section_params
    params.require(:section).permit(:name, :section_number, :chapter_id)
  end
end
