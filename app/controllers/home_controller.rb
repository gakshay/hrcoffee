class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml
    end
  end
 
  def click_to_call_callback
    print params.inspect
    if params.count > 2
      respond_to do |format|
        format.html {render :text => "Parameters saved", :status => "ok"}
        format.xml {render :xml => {:status => "ok"}}
      end
    else
      respond_to do |format|
        format.html {render :text => "No Parameters found", :status => "ok"}
        format.xml {render :xml => {:status => "error"}}
      end
    end
  end
end
