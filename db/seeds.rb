# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




puts "Deleting all sites"
Site.destroy_all
puts "Deleted all sites"


puts "Creating sites"
Site.create(name: "Stepney City Farm", address: "London")
Site.create(name: "Hackney City Farm", address: "London")
Site.create(name: "Spitalfields City Farm", address: "London")
Site.create(name: "Vauxhall City Farm", address: "London")
Site.create(name: "Kentish Town City Farm", address: "London")
Site.create(name: "Newham City Farm", address: "London")
Site.create(name: "Mudchute City Farm", address: "London")

puts "Created sites"

puts "Creating plots"
Plot.create(plot_number: "Sarah's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1534710961216-75c88202f43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80")
Plot.create(plot_number: "Tim's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1558717738-12f5dde036a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
Plot.create(plot_number: "Oliver's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1557207562-a3157143784e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
Plot.create(plot_number: "Cicely's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1507484467459-0c01be16726e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
Plot.create(plot_number: "William's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1548400659-500be8d0279a?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
Plot.create(plot_number: "Valerie's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1545165311-508ed0c91361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
Plot.create(plot_number: "Cicely's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1507484467459-0c01be16726e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
Plot.create(plot_number: "William's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1548400659-500be8d0279a?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
Plot.create(plot_number: "Valerie's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1545165311-508ed0c91361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
Plot.create(plot_number: "Cicely's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1507484467459-0c01be16726e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")
Plot.create(plot_number: "William's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1548400659-500be8d0279a?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80")
Plot.create(plot_number: "Valerie's plot", site_id: Site.all.sample.id, image_url: "https://images.unsplash.com/photo-1545165311-508ed0c91361?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80")

puts "Created plots"
