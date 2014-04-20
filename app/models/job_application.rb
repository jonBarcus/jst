class JobApplication < ActiveRecord::Base
  belongs_to :user

  validates(:job_title, { :presence => true })
  validates(:company_name, { :presence => true })
end