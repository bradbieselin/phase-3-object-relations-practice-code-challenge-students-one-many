class Cohort < ActiveRecord::Base
  has_many :students

  def add_student(name, age)
    self.students.create(name: name, age: age, cohort_id: self.id)
  end

  def average_age
    self.students.average(:age).to_f
  end

  def total_students
    students.calculate(:count, :all)
  end

  def self.biggest
    self.all {|cohort_obj| cohort_obj.students.length}.max
  end

  def self.sort_by_mod
    self.order(:current_mod)
  end
end