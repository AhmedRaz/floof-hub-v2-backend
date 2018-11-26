class Api::V1::UsersController < ApplicationController

  # POST /users
  def create

    @user = User.new(user_params)

    if @user.save
      render json: { token: issue_token({ id: @user.id }) }
    else
      render json: { error: "User not created" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email_address, :telephone, :company_id, :password, :profile_pic_src, :user_level)
    end
end
