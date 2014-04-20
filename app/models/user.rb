class User < ActiveRecord::Base

  has_many :job_applications

  validates(:email,     { :presence     => true })
  validates(:email,    { :uniqueness   => { case_sensitive: false }})

  validates(:name,     { :presence     => true })

  has_secure_password

end
