class PagesController < ApplicationController
  def root
    @organizations = Organization.limit(10).order('RANDOM()').includes(:country)
  end
end
