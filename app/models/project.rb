class Project < ActiveRecord::Base
has_many  :developers, through: :developer_projects, class_name: 'DeveloperProject', foreign_key: :project_id
#validates_presence_of :client, :developer
has_many :developer_projects
has_one :client






 def new
   @project = Project.new
 end

 def total
   @total = @project.count
 end

 def total_hours
   @hours = @project.start.to_time + @project.end.to_time
 end

 def hours
     (self.end - self.start) / 3600
   end

 private

 def project_params
   params.require("project").permit(:name, :hours, :start, :end, :description)

 end
end
