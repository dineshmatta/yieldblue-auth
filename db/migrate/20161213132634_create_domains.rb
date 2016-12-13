class CreateDomains < ActiveRecord::Migration[5.0]
  def change
    create_table :domains do |t|
      t.text :name
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
