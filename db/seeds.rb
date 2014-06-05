# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#remove all data
['articles','article_comments'].each do |x|
  ActiveRecord::Base.connection.execute("TRUNCATE #{x} RESTART IDENTITY")
end

5.times do |i|
  name = Faker::Name.name
  User.create(
    name: name, email: "#{name.gsub(' ','_')}@example.com",
    password: 'password', password_confirmation: 'password'
  )
end

10.times do |i|
  name = Faker::Commerce.department
  Category.create(name: name, slug: name.to_slug)
end

10.times do |i|
  title = Faker::Name.title
  content = Faker::Lorem.paragraph(10)
  Article.create(
    title_id: title, title_en: title, content_id: content, content_en: content, slug: title.to_slug,
    user_id: User.all.sample(1).first.id, category_id: Category.all.sample(1).first.id
  )
end

10.times do |i|
  ArticleComment.create(content: Faker::Lorem.paragraph(5), article_id: Article.all.sample(1).first.id )
end
