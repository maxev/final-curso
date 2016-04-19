class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_marks
  before_action :set_categories

  protected


  def set_marks
  	@marks = Mark.all
  end

  def set_categories
  	@categories = Category.all
  end

end
