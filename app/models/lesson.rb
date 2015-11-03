class Lesson < ActiveRecord::Base
  belongs_to :unit
  validates :title, :body, :unit, presence: true

  scope :top, ->  { where("array_length(lesson_ids, 1) IS NULL") }

  before_validation do
    self.lesson_ids = self.lesson_ids.compact
  end

  def lessons
    Lesson.where("? = ANY(lesson_ids)", self.id )
  end
end
