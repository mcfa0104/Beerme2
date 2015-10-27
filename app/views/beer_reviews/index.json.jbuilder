json.array!(@beer_reviews) do |beer_review|
  json.extract! beer_review, :id, :rating, :comments
  json.url beer_review_url(beer_review, format: :json)
end
