class Developer < User
  has_many  :projects, through: :developer_projects, class_name: 'DeveloperProject', foreign_key: :developer_id
  has_many  :clients
  has_many  :developer_projects
end
