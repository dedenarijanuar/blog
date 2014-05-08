json.array!(@blogs) do |blog|
  json.extract! blog, :id
  json.url blog_url(blog, format: :json)
end
