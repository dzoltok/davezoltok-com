# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Post.create!(
  title: "Example title",
  subtitle: "Example subtitle",
  body: <<POST_BODY
This is an example of a multi-paragraph post body that may appear on the site.

If this sentence is displayed in the same paragraph as the previous sentence, something has gone wrong.
POST_BODY
) if Rails.env.development?