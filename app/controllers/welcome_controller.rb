class WelcomeController < ApplicationController
  def homepage
  	if user_signed_in?
  			redirect_to :controller =>"cards", :action => 'index'
  	end
  end
end
