class CreateCompaniesHrs < ActiveRecord::Migration[5.1]
  def change
    create_table :companies_hrs do |t|

      t.timestamps
    end
  end
end
