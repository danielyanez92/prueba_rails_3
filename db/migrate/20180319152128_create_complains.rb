class CreateComplains < ActiveRecord::Migration[5.1]
  def change
    create_table :complains do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
