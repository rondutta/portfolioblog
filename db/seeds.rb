# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |topic|
  Topic.create!(
           title: "Topic #{topic}"
  )
end
10.times do |blog|
  Blog.create!(
          title: "My Blog Post #{blog}",
          body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                 Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                 when an unknown printer took a galley of type and scrambled it to make a type
                 specimen book. It has survived not only five centuries, but also the leap
                 into electronic typesetting, remaining essentially unchanged.
                 It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum
                 passages, and more recently with desktop publishing software like Aldus PageMaker
                 including versions of Lorem Ipsum",
          topic_id: Topic.last.id
          )
end

5.times do |skill|
  Skill.create!(
           title: "Ruby on Rails #{skill}",
           percentage: 20
  )
end

8.times do |portfolio_item|
  Portfolio.create(
               title: "Portfolio title #{portfolio_item}",
               subtitle: "Ruby on Rails",
               body: "Lorem ipsum dolor etc etc",
               main_image:"http://via.placeholder.com/600x400",
               thumb_image: "http://via.placeholder.com/350x150"
  )
end

1.times do |portfolio_item|
  Portfolio.create(
      title: "Portfolio title #{portfolio_item}",
      subtitle: "React JS",
      body: "Lorem ipsum dolor etc etc",
      main_image:"http://via.placeholder.com/600x400",
      thumb_image: "http://via.placeholder.com/350x150"
  )
end

puts "9 items created"