class Task < ActiveRecord::Base
  attr_accessible :description, :due, :importance, :name, :completed
  validates_inclusion_of :importance, :in => 1..3, :message => "must be a number between 1 and 3."
  searchable do
    text :name, :default_boost => 2
    text :description
  end
end