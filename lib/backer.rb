class Backer
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
            
        
    def backed_projects
        my_project_backer = ProjectBacker.all.select do |project|
            project.backer == self
          end
          my_project_backer.map do |project|
            project.project
          end
    end
end



#brod = Backer.new("Brodrick")

#flatiron = Project.new("Flatiron")

#project_backer = ProjectBacker.new(flatiron, brod)