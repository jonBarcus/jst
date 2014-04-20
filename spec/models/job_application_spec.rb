require 'spec_helper'

describe JobApplication do

  it { should validate_presence_of(:job_title) }

  it { should validate_presence_of(:company_name) }

end