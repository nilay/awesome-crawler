class CreateWebsite < ActiveRecord::Migration[5.0]
  def change
    create_table :websites do |t|

      t.string :url
      t.text :content
      t.string :status
      t.datetime :crawl_started_at
      t.datetime :crawl_completed_at

      t.timestamps
    end

    add_index :websites, :url, unique: true
  end
end
