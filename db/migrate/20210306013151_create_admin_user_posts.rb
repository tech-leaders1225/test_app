class CreateAdminUserPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_user_posts do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
