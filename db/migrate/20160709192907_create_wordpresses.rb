class CreateWordpresses < ActiveRecord::Migration[5.0]
  def change
    create_table :wordpresses do |t|
      t.string :version
      t.date :release_date

      t.timestamps
    end
  end
end
