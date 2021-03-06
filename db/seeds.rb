# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
if user = User.find_by_email(ENV['ADMIN_EMAIL'])
  user
else
  user = User.new(
    :name => ENV['ADMIN_NAME'].dup, 
    :email => ENV['ADMIN_EMAIL'].dup, 
    :password => ENV['ADMIN_PASSWORD'].dup, 
    :password_confirmation => ENV['ADMIN_PASSWORD'].dup
  )
  user.skip_confirmation!
  user.save!
end

puts 'user: ' << user.name
user.add_role :admin

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
