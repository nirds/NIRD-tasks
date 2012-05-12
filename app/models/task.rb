class Task < ActiveRecord::Base
  attr_accessible :description, :due, :importance, :name
end
