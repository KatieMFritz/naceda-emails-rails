class AddResourcesToNewsletters < ActiveRecord::Migration
  def change
    add_column :newsletters, :resources, :text
  end
end
