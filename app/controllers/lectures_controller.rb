class LecturesController < ApplicationController

  def destroy
    @lecture.destroy
    redirect_to root_url
  end

  def new
    @lecture = course.lectures.build(params[:lecture])
    if @lecture.save
      flash[:success] = "lecture created!"
      redirect_to root_url
    else
      flash[:error] = "lecture creation failed!"
      render 'static_pages/home'
    end
  end
end