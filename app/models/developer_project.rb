class DeveloperProject < ActiveRecord::Base
	belongs_to :project
	belongs_to :developer
end
