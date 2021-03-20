class AddUserIdToUserPost < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_posts, :user, foreign_key: true
  end
end
