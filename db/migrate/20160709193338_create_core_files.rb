class CreateCoreFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :core_files do |t|
      t.string :file_name
      t.string :mdsum
      t.integer :size
      t.text :content

      t.timestamps
    end
  end
end
