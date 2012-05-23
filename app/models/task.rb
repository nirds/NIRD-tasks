class Task < ActiveRecord::Base
  attr_accessible :description, :due, :importance, :name
  validates_inclusion_of :importance, :in => 1..9, :message => "must be a number between 1 and 9."
end
