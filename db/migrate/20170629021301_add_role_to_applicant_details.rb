class AddRoleToApplicantDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :applicant_details, :role, :string
  end
end
