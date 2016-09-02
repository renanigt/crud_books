class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :resume
      t.string :author
      t.string :status
    end
  end
end
