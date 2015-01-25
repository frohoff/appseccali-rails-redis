class DefaultController < ApplicationController
  def index
    if params[:word]
      session[:word] = params[:word]
      redirect_to root_url 
    end
  end
end
