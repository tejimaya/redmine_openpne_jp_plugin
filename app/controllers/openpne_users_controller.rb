class OpenpneUsersController < UsersController

  def show
    @user = User.active.find_by_login(:username)

    respond_to do |format|
      format.xml
    end
  end
end
