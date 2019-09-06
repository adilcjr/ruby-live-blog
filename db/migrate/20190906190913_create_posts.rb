class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :body
      t.text :author
      t.text :media
      t.numeric :likes
      t.boolean :sponsored
      t.date :due_date

      t.timestamps
    end
  end
end
