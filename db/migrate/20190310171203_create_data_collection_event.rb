class CreateDataCollectionEvent < ActiveRecord::Migration[5.2]
  def change
    create_table :data_collection_events do |t|
      t.references :study, foreign_key: true
      t.timestamps
    end
  end
end
