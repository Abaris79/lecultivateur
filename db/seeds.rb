# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = Project.create([{ name: "Une histoire de flute" }, { name: "Suites avec vue"}])
oases = Oasis.create([{ name: "Eglise Saint-Pierre", city: "Berneuil en Bray"}, { name: "Salle des Fêtes", city: "Auneuil"}])
