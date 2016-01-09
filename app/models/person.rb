class Person < ActiveRecord::Base
  has_one :personal_info, dependent: :destroy
  has_many :jobs
  has_many :my_jobs, class_name: "Job"
  # basically just creating a alias
end
