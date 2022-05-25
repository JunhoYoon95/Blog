class PagesController < ApplicationController
  def home
    @teachers = Teacher.all
    @message = "Hi"
  end

  def index
    @teachers = Teacher.all
    @message = "Hi"
  end

end
