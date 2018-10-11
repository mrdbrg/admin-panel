class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all

  end

  def new
    @cohort = Cohort.new
    
    @courses = Course.all.map { |course| 
      [course.name, course.id] 
    }
  end

  def create
    cohort = Cohort.create(
      course_id:       params[:cohort][:course_id],
      class_size:      params[:cohort][:class_size],
      start_date:      params[:cohort][:start_date],
      end_date:        params[:cohort][:end_date]
    )

    redirect_to cohorts_path
  end

  def edit
    @cohort = Cohort.find(params[:id])
  end

  def update
    cohort = Cohort.find(params[:id])

    cohort.update(
      class_size:       params[:cohort][:class_size],
      start_date:       params[:cohort][:start_date],
      end_date:         params[:cohort][:end_date]
    )

    redirect_to cohorts_path(cohort)
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def delete
  end
end
