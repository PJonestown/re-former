class FormTagUsersController < ApplicationController
  def new
  end

  def create
    @form_tag_user = FormTagUser.new(:username => params[:username],
                                     :password => params[:password])
    if @form_tag_user.save
      redirect_to form_tag_user_path(@form_tag_user)
    else
      render :new
    end
  end

  def show
    @form_tag_user = FormTagUser.find(params[:id])
  end

  private

  def form_tag_user_params
    params.require(:form_tag_users).permit(:username, :password)
  end
end
