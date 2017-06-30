class CreateApplicantDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :applicant_details do |t|
      t.string :applicant_name
      t.string :mail_id
      t.integer :phone_no
      t.text :address
      t.string :qualification
      t.integer :experience

      t.timestamps
    end
  end
end
