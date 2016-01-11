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

  scope :ordered_by_age, -> { order age: :desc }
  # scope takes a lambda. similar to a ruby block
  scope :starts_with, -> (starting_string){ where("first_name LIKE ?", "#{starting_string}%") }
  # can even add arguments so the scopes are controlled and more
  # dynamic. also using array syntax here to avoid string injection
  # unlike a class method which could return anything, a scope has to return
  # an ActiveRecord relation. This means we can chain scopes!
end
