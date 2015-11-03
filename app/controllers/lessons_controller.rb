class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all.top
  end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new params.require(:lesson).permit(:unit_id, :title, :body, :lesson_order, :lesson_ids=>[])
    if @lesson.save!
      redirect_to lessons_path
    else
      render :new
    end
  end

  def edit
  end
end
