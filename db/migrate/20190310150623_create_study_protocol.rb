class CreateStudyProtocol < ActiveRecord::Migration[5.2]
  def change
    create_table :study_protocols do |t|
      t.text :instructions
      t.references :study, foreign_key: true
      t.timestamps
    end
  end
end
