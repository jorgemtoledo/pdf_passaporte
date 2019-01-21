class CreateGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :guides do |t|
      t.string :company
      t.string :address
      t.string :patient
      t.string :doctor
      t.string :date
      t.string :hour
      t.string :specialty
      t.string :exam
      t.string :document
      t.string :passport
      t.string :value
      t.string :registration

      t.timestamps
    end
  end
end
