class Lesson < ActiveRecord::Base
  belongs_to :unit
  validates :title, :body, :unit, presence: true

  include RailsSortable::Model
  set_sortable :sort

  scope :top, ->  { where("array_length(lesson_ids, 1) IS NULL") }

  scope :ordered, -> { joins(:unit).order("units.unit_order ASC, sort ASC")}

  before_validation do
    self.lesson_ids = self.lesson_ids.compact
  end

  def lessons
    Lesson.where("? = ANY(lesson_ids)", self.id )
  end

  def full
    [unit.name, title].join(" - ")
  end
end
