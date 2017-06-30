class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :mail_id
      t.string :phone_no
      t.text :address
      t.string :qualification
      t.integer :experience
      t.string :project_name
      t.text :project_description
      t.string :technology
      t.string :location

      t.timestamps
    end
  end
end
