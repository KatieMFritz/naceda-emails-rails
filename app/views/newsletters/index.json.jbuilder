json.array!(@newsletters) do |newsletter|
  json.extract! newsletter, :id, :subject, :date, :sender, :teaser_text, :naceda_news, :member_news, :federal_news, :partner_news, :naceda_events, :member_events, :federal_events, :partner_events, :resources, :jobs
  json.url newsletter_url(newsletter, format: :json)
end
