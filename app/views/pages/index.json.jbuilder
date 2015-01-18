json.array!(@pages) do |page|
  json.extract! page, :id, :title, :content, :pub_date, :url, :category, :author, :image, :source
end
