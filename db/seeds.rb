# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting all projects.."
Project.destroy_all
puts "Deleted projects, creating new ones.."

Project.create!(
  title: "Summertime Magic",
  catch_phrase: "Your favorite cocktails, all in one place",
  description: "Summertime Magic is a cocktail management app that allows you to check out a variety of cocktails and its recipes. You can also add your own and share it to the world if you find or have a drink that you love!",
  thumbnail: "..app/assets/images/summertime_magic_thumbnail.png",
  user_journey_image: "..app/assets/images/summertime_magic_thumbnail.png",
  skill: %w(HTML CSS Javascript Ruby\ on\ Rails),
  responsiveness: true,
  code_link: "https://github.com/shindosu/rails-mister-cocktail",
  demo_link: "https://mister-cockerz.herokuapp.com/"
)

Project.create!(
  title: "Swapsies",
  catch_phrase: "Swap your favourite games anywhere, anytime!",
  description: "Swapsies is a game swapping app that allows you to swap owned games with users around the world. If you have a game that you want to get rid of in exchange for another game you want to try out, Swapsies is the place for you!",
  thumbnail: "..app/assets/images/summertime_magic_thumbnail.png",
  user_journey_image: "..app/assets/images/summertime_magic_thumbnail.png",
  skill: %w(HTML CSS Javascript Ruby\ on\ Rails),
  responsiveness: false,
  code_link: "https://github.com/shindosu/swapsies",
  demo_link: "http://gameswapsies.herokuapp.com/"
)

Project.create!(
  title: "Ronpa",
  catch_phrase: "Talk about what really matters",
  description: "Ronpa is an online debating platform that allows you to debate about virtually anything live with users around the world. If you want to enhance your communication and persuasion skills and learn about a toipic simultaneously, Ronpa is the app to use!",
  thumbnail: "..app/assets/images/summertime_magic_thumbnail.png",
  user_journey_image: "..app/assets/images/summertime_magic_thumbnail.png",
  skill: %w(HTML CSS Javascript Ruby\ on\ Rails, Action\ Cable),
  responsiveness: false,
  code_link: "https://github.com/shindosu/ronpa",
  demo_link: "ronpa.org"
)

puts "Done! Created #{Project.count} projects"