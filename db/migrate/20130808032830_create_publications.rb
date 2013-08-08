class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :name
      t.string :url
      t.text :description
      t.string :political_bent

      t.timestamps
    end
  end
end
