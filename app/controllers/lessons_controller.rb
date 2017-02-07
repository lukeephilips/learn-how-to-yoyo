class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      flash[:notice]="You added a lesson!"
      redirect_to lessons_path
    else
      flash[:alert]="You didn't add the lesson... keep practicing!"
      render :new
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :content, :image)
  end
end
