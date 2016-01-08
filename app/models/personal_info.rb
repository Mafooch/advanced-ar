class PersonalInfo < ActiveRecord::Base
  belongs_to :person
  # this is a one to one relationship but we do have to pick
  # one side that has the foreign key and belongs to the other.
end
