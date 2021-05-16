class PagesController < ApplicationController
  def home
    @page = 'home'
  end

  def info
    @page = 'info'
  end

  def catering
    @page = 'catering'
  end
end
