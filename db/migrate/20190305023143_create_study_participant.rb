class CreateStudyParticipant < ActiveRecord::Migration[5.2]
  def change
    create_table :study_participants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false
      t.references :study, foreign_key: true

      t.timestamps
    end
  end
end
