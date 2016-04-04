json.array!(@announcements) do |announcement|
  json.extract! announcement, :id, :subject, :date, :sender, :teaser_text, :headline, :author, :story, :image_link, :story_link
  json.url announcement_url(announcement, format: :json)
end
