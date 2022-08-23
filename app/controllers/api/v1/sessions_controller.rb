class Api::V1::SessionsController < ApplicationController
  include SessionsConcern
  skip_before_action :require_login, only: [:create, :logged_in]

  def create
    @teacher = Teacher.find_by(email: teacher_params[:email])
    if @teacher.present? && @teacher.authenticate(teacher_params[:password])
      session[:user_id] = @teacher.id
      render json: {
        logged_in: true,
        teacher: @teacher
      }
    else
      render json: { message: 'Invalid email or password' }, status: :unprocessable_entity
    end
  end

  def logged_in
    if @current_user
      render json: @current_user
    else
      render json: { logged_in: false }
    end
  end

  def logout
    reset_session
    render json: {
      logged_in: false,
      status: 200
    }
  end

  private
  
  def teacher_params
    params.require(:teacher).permit(:email, :password)
  end
end
