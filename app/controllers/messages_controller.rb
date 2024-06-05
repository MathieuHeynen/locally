class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @chat = Chat.find(params[:chat_id])
    @message.chat_id = @chat.id
    @message.user_id = current_user.id

    if @message.save
      ChatChannel.broadcast_to(
        @chat,
        render_to_string(partial: "message", locals: { message: @message })
      )
      head :ok
    else
      render 'chats/show', status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
