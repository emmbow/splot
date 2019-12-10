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
Site.create(name: "Stepney City Farm")
Site.create(name: "Hackney City Farm")
Site.create(name: "Spitalfields City Farm")
Site.create(name: "Vauxhall City Farm")
Site.create(name: "Kentish Town City Farm")
Site.create(name: "Newham City Farm")
Site.create(name: "Mudchute City Farm")

puts "Created sites"

puts "Creating plots"
Plot.create(plot_number: "corner plot", site_id: Site.where(name: "Mudchute City Farm").take!.id)

puts "Created plots"
