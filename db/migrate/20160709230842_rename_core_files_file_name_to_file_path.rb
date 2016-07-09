class RenameCoreFilesFileNameToFilePath < ActiveRecord::Migration[5.0]
  def change
    rename_column :core_files, :file_name, :file_path
  end
end
