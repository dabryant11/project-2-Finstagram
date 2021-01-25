# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Comment.destroy_all
Tag.destroy_all
Picture.destroy_all

bruce = User.create(name: 'Bruce', email: 'bruce@hotmail.com', username: 'DieHardBruce', password: 'diehard' )
dave = User.create(name: 'Dave', email: 'dave@hotmail.com', username: 'DaveC', password: 'dc' )
cedric = User.create(name: 'Cedric', email: 'cedric@hotmail.com', username: 'DaEntertainer', password: 'cde')

# tagz = ["Nature", "NYC", "Art", "Humor"]

# tagz.each do |tag_name|
# end
nature = Tag.create(name: 'Nature')
art = Tag.create(name: 'Art')
nyc = Tag.create(name: 'NYC')

pic1 = Picture.create(user_id: 1, image_url: 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2019%2F07%2Fdiehard1-2000.jpg', title: 'bruce in vent')
pic2 = Picture.create(user_id: 1, image_url: 'https://i.pinimg.com/originals/3f/ee/a6/3feea6eaa68a14471dd094b62ab7457d.jpg', title: 'happy bruce')

comment1 = Comment.create(user_id: 1, picture_id: 1, content: 'merry christmas')