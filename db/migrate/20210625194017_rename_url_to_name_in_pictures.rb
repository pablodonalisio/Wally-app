class RenameUrlToNameInPictures < ActiveRecord::Migration[6.1]
  def change
    rename_column :pictures, :url, :name
  end
end
