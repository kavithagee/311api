class CreateCase311s < ActiveRecord::Migration
  def change
    create_table :case311s do |t|
      t.boolean :needs_recoding
      t.decimal :longitude
      t.decimal :latitude
      t.string :category
      t.string :request_details
      t.string :source
      t.string :address
      t.string :request_type
      t.string :status
      t.timestamp :updated
      t.string :media_url
      t.string :neighborhood
      t.timestamp :closed
      t.integer :supervisor_district
      t.string :responsible_agency
      t.timestamp :opened

      t.timestamps
    end
  end
end
