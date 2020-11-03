class Project
    attr_reader :title

    def initialize(title)
         @title = title
    end


    def add_backer(backer)
            ProjectBacker.new(self, backer)
    end


    def backers
        my_backer = ProjectBacker.all.select do |backer|
            backer.project == self
          end
          my_backer.map do |backer|
            backer.backer
          end
    end
end





   
   
   
   





