class AddContentToTweets < ActiveRecord::Migration[7.1]
  def change
    add_column :tweets, :content, :text
  end
end
