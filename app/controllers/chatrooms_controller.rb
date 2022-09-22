class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: %i[show destroy]

  def index
    @chatrooms = Chatroom.all
  end

  def new
    @assistant = Assistant.find(params[:assistant_id])
    @chatroom = Chatroom.new
    @chatroom.assistant_id = @assistant.id
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.company_id = current_user.company.id
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end

  def show
    @mensaje = Mensaje.new
    @chatrooms = Chatroom.all
  end

  def destroy
    @chatroom.destroy
    redirect_to chatrooms_path
  end

  private

  def set_chatroom
    @chatroom = Chatroom.find(params[:id])
  end

  def chatroom_params
    params.require(:chatroom).permit(:assistant_id)
  end
end
