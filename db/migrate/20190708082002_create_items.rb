class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.text        :title
      t.text        :contents
      t.integer     :price_s
      t.integer     :price_e
      t.references  :skill, foreign_key: true
      t.references  :place, foreign_key: true
      t.references  :jobtype, foreign_key: true
      t.references  :industry, foreign_key: true
      t.timestamps
    end
  end
end
