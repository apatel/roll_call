class ClassItem < ActiveRecord::Base
  belongs_to :class_type
  belongs_to :location
  belongs_to :instructor
end
