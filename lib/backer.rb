require 'pry'

class Backer

  attr_accessor :name

  def initialize(name)
    @name = name
    @projects = []
  end

  def back_project(project)
    @projects << project
    project.add_backer(self) unless project.backers.include?(self)
    
  end

  def backed_projects
    @projects
  end

end