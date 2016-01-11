class Hobby < ActiveRecord::Base
  has_and_belongs_to_many :people

  default_scope { order :name }
  # you can query without the scope like so:
  # Hobby.unscoped.pluck :name
end
