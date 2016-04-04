class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :subject
      t.string :date
      t.string :sender
      t.string :teaser_text
      t.text :naceda_news
      t.text :member_news
      t.text :federal_news
      t.text :partner_news
      t.text :naceda_events
      t.text :member_events
      t.text :federal_events
      t.text :partner_events
      t.text :jobs

      t.timestamps null: false
    end
  end
end
