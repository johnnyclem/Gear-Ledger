class SessionsController < Clearance::SessionsController

  def url_after_create
    items_path
  end
end