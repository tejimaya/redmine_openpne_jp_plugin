class OpenpneUsersController < UsersController

  def show
    @user = User.find_by_login(params[:username])

    respond_to do |format|
      format.xml
    end
  end
end
