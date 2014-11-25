class HomeController < ApplicationController
  def index
  end
  def logout
    RubyCAS::Filter.logout(self)
  end
end
