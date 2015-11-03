class LessonsController < ApplicationController
  def index
    @units = Unit.all.ordered
  end

  def show
    @lesson = Lesson.find params[:id]
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new params.require(:lesson).permit(:unit_id, :title, :body, :lesson_order, :lesson_ids=>[])
    if @lesson.save
      redirect_to lessons_path
    else
      render :new
    end
  end

  def edit
    @lesson = Lesson.find params[:id]
  end

  def update
    @lesson = Lesson.find params[:id]
    if @lesson.update params.require(:lesson).permit(:unit_id, :title, :body, :lesson_order, :lesson_ids=>[])
      redirect_to lessons_path
    else
      render :new
    end
  end

  def destroy
    Lesson.destroy params[:id]
    redirect_to :lessons
  end
end
