class SalaryRange < ActiveRecord::Base
  belongs_to :job

  validate :min_is_less_than_max
  # we can actually do this usually numericality

  def min_is_less_than_max
    if min_salary > max_salary
      errors.add(:min_salary, "cannot be greater than maximum salary!")
      # adding an error by specifying error column and error message
    end
  end
end
