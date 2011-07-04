class PackagesController < ApplicationController
  before_filter :authorize
  
  def index
    @packages = Package.where("name like ?", "%#{params[:q]}%")
    respond_to do |format|
      format.html
      format.json { render :json => @packages.map(&:attributes) }
    end
  end

  def show
    @package = Package.find(params[:id])
  end

  def new
    @package = Package.new
  end

  def create
    @package = Package.new(params[:package])
    if @package.save
      redirect_to @package, :notice => "Successfully created package."
    else
      render :action => 'new'
    end
  end

  def edit
    @package = Package.find(params[:id])
  end

  def update
    @package = Package.find(params[:id])
    if @package.update_attributes(params[:package])
      redirect_to @package, :notice  => "Successfully updated package."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @package = Package.find(params[:id])
    @package.destroy
    redirect_to packages_url, :notice => "Successfully destroyed package."
  end
end
