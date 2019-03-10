class AddCollectedAtToDataCollectionEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :data_collection_events, :collected_at, :datetime, null: false
  end
end
