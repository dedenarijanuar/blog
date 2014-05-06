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

10.times do |i|
  title = Faker::Lorem.sentence
  content = Faker::Lorem.paragraph(10)
  Article.create(title_id: title, title_en: title, content_id: content, content_en: content)
end

10.times do |i|
  ArticleComment.create(content: Faker::Lorem.paragraph(5), article_id: Article.all.sample(1).first.id )
end
