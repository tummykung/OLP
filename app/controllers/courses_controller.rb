class CoursesController < ApplicationController
  before_filter :signed_in_user,  only: [:show]

  def destroy
    @course.destroy
    redirect_to root_url
  end

  def show
    @course = Course.find(params[:id])
    @lectures = @course.lectures.paginate(page: params[:page])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      flash[:success] = "Course added!"
      redirect_to info_path
    else
      render 'new'
    end
  end
end