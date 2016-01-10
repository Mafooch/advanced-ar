class Person < ActiveRecord::Base
  has_one :personal_info, dependent: :destroy
  has_many :jobs
  has_many :my_jobs, class_name: "Job"
  # basically just creating a alias
  has_and_belongs_to_many :hobbies
  # use habtm instead of has many through when we don't
  # need the overhead of the join model
  has_many :approx_salaries, through: :jobs, source: :salary_range

  def max_salary
    approx_salaries.maximum :max_salary
    # method doesn't pull back all info, just runs it on the
    # max_salary field
  end
end
