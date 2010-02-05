class OpenpneMembersController < MembersController

  before_filter :authorize, :except => [ :new ]

  def new
    members = []
    if params[:member] && request.post?
      attrs = params[:member].dup
      if (user_ids = attrs.delete(:user_ids))
        user_ids.each do |user_id|
          members << Member.new(attrs.merge(:user_id => user_id))
        end
      else
        members << Member.new(attrs)
      end
      @project.members << members
    end
    respond_to do |format|
      format.xml  { head :created }
    end
  end
end
