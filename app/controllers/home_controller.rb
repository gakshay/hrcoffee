class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { Gyoku.xml(:find_user => { :id => 123, "v1:Key" => "api" }) }
    end
     
  end
end
