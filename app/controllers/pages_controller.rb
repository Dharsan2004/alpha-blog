class PagesController < ApplicationController

  def about
    @title = "About page"
    @content = "This is about page data is sent dyanmically"
  end

end
