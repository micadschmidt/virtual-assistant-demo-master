class ApplicationsController < ApplicationController
  before_action :set_user
  before_action :set_application, only: %i[show edit update destroy]

  APPLICATIONS_PER_PAGE = 6

  def index

    if user_signed_in?
      if current_user.assistant != nil
        @applications = Application.where(assistant: @user.assistant)
      elsif current_user.company != nil
        @applications = Application.select {|app| app.company == @user.company}
      end
    else
      redirect_to root_path
    end
  end

  def show
    @application = Application.find(params[:id])
  end

  def new
    if @user.assistant != nil
      @application = Application.new
      @offer = Offer.find(params[:offer_id])
    else
      redirect_to new_assistant_path
    # authorize @offer
    end
  end

  def create
    @application = Application.new()
    @application.offer_id = params[:application][:offer_id]
    # raise
    @application.assistant_id = current_user.assistant.id
    # if @user.assistant.nil?
    # redirect_to new_assistant_path
    # else
    # @application.offer_id = @offer
    # @application.assistant_id = @user.assistant
    # end
    if @application.save
      redirect_to applications_path

    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @application.update(application_params)
    redirect_to applications_path
  end

  def destroy
    @application.destroy
    redirect_to applications_path
  end

  private

  def application_params
    params.require(:application).permit(:status)
  end

  def set_application
    @application = Application.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
