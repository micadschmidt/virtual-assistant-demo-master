class MensajesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @mensaje = Mensaje.new(mensaje_params)
    @mensaje.chatroom = @chatroom
    @mensaje.user = current_user
    if @mensaje.save
      ChatroomChannel.broadcast_to(
        @chatroom,
        mensaje: render_to_string(partial: "mensaje", locals: {mensaje: @mensaje }),
        sender_id: @mensaje.user.id
      )
      head :ok
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def mensaje_params
    params.require(:mensaje).permit(:content)
  end
end
