class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.string :job_title
      t.string :company_name
      t.string :contact_name
      t.string :contact_title
      t.string :contact_email
      t.string :description_url
      t.string :status
      t.date :date_submitted
      t.string  :submission_method
      t.string :follow_up
      t.text  :comments
      t.timestamps
      t.references :user, index: true
    end
  end
end