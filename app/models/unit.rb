class Unit < ActiveRecord::Base
  has_many :lessons, -> { order("lesson_order asc") },dependent: :destroy
  validates :name, presence: true

  scope :ordered, -> {order("unit_order asc")}
end
