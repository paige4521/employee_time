# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


d = Developer.find_by_email 'lisa@lisa.com'
p = Project.create(name: 'test project')
dp = DeveloperProject.new
dp.project_id = p.id
dp.developer_id = d.id
dp.save


d = Developer.find_by_email 'lisa@lisa.com'
p = Project.create(name: 'test project for knobs')
dp = DeveloperProject.new
dp.project_id = p.id
dp.developer_id = d.id
dp.save

d = Developer.find_by_email 'knobs@knobs.com'
p = Project.create(name: 'test project for doors')
dp = DeveloperProject.new
dp.project_id = p.id
dp.developer_id = d.id
dp.save

d = Developer.find_by_email 'knobs@knobs.com'
p = Project.create(name: 'test project for hinges')
dp = DeveloperProject.new
dp.project_id = p.id
dp.developer_id = d.id
dp.save
