class PagesController < ApplicationController
  def home
    if params[:query].present?
      @plots = []
      Plot.all.each do |plot|
        if plot.site.name.downcase.include? params["query"].downcase
          @plots << plot
        end
      @plots
      end
    end
  end

  def search
  end
end
