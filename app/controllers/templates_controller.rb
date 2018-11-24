class TemplatesController < ApplicationController
  def show
    if valid_template?
      render template: "templates/#{params[:template]}/index.html"
    else
      render file: "public/404.html", status: :not_found
    end
  end

  private
  def valid_template?
    File.exist?(Pathname.new(Rails.root + "app/views/templates/#{params[:template]}/index.html"))
  end
end
