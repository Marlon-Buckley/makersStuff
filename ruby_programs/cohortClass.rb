class Cohort

  def initialize
    @list = Array.new
  end

# add_student
# takes one hash, representing a student, as an arg.
# E.g. {'name' => 'Jo', 'employer' => 'NASA'}
# adds the new student to the list of students

  def add_student(studentEmployerHash)
    @list << studentEmployerHash
  end

# students
# returns all the students who have been added to the cohort

  def students
    @list.select {|student| student}
  end

# employed_by
# takes one string, the name of an employer, as an arg.
# E.g. 'NASA'
# returns only the students who work for that employer

  def employed_by(employer)
    @list.select { |employers| employers["employer"] == employer }
  end
end


june2020 = Cohort.new

june2020.add_student({'name' => 'Gene', 'employer' => 'Atlantis Digital'})
june2020.add_student({'name' => 'Petra', 'employer' => 'Atlantis Digital'})
puts june2020.add_student({'name' => 'Jaspal', 'employer' => 'Mercia Digital'})
puts " ------ "
puts june2020.employed_by("Mercia Digital")