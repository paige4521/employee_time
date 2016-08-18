class Project < ActiveRecord::Base
  has_many  :developers
  validates_presence_of :client, :developer
end
