class Admin::BaseconfigsController < AdminController

  def index
    @baseconfigs = Baseconfig.all
  end

  def show
    @baseconfig = Baseconfig.find(params[:id])
  end
  
  def edit
    @baseconfig = Baseconfig.find(params[:id])
  end
  
  def update
    @baseconfig = Baseconfig.find(params[:id])
    if @baseconfig.update_attributes(params[:baseconfig])
      redirect_to [:admin, :baseconfigs], notice: 'baseconfig was successfully updated.'
    else
      render action: :edit
    end
  end

end