class FormForUsersController < ApplicationController
  def new
    @form_for_user = FormForUser.new
  end

  def create
   @form_for_user = FormForUser.new(form_for_user_params)
    if @form_for_user.save
      redirect_to form_for_user_path(@form_for_user)
    else
      render :new
    end
  end

  def show
    @form_for_user = FormForUser.find(params[:id])
  end

  private

  def form_for_user_params
    params.require(:form_for_user).permit(:username, :password)
  end

end
