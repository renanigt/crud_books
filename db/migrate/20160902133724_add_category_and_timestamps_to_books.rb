class AddCategoryAndTimestampsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :category, :string
    add_column :books, :created_at, :datetime
    add_column :books, :updated_at, :datetime
  end
end
