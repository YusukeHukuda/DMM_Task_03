class RenameUserBookIdColumnToBooksUserId < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :user_book_id, :user_id
  end
end
