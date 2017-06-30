json.extract! student, :id, :name, :mail_id, :phone_no, :address, :qualification, :experience, :project_name, :project_description, :technology, :location, :created_at, :updated_at
json.url student_url(student, format: :json)
