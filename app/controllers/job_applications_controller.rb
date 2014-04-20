class JobApplicationsController < ApplicationController

  before_action :logged_in?

  def index
    @job_applications = JobApplication.all
  end

  def new
    @job_application = JobApplication.new
  end

  def create
    new_application = JobApplication.new(application_params)

    if new_application.save
      flash[:notice] = "Successfully created a new job application."
      redirect_to user_job_application_path(current_user, new_application)
    else
      flash[:notice] = "Something went wrong."
      render :new
    end
  end

  def show
    @job_application = JobApplication.find(params["id"])
  end

  def edit
    @job_application = JobApplication.find(params["id"])
  end

  def update
    job_application = JobApplication.find(params["id"])
    job_application.update(application_params)
    if job_application.save
      flash[:notice] = "Successfully updated your job application."
      redirect_to user_job_application_path(current_user, job_application)
    else
      flash[:notice] = "Something went wrong."
      render :edit
    end
  end

  private

  def application_params
    params.require(:job_application).permit(
      :job_title, 
      :company_name, 
      :contact_name, 
      :contact_title, 
      :contact_email, 
      :description_url, 
      :status, 
      :date_submitted, 
      :submission_method, 
      :follow_up)
  end

end