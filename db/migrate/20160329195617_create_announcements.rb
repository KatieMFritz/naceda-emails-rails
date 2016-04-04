class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :subject, null: false, default: ''
      t.date :date
      t.string :sender
      t.string :teaser_text
      t.string :headline
      t.string :author
      t.text :story
      t.string :image_link
      t.string :story_link

      t.timestamps null: false
    end
  end
end
