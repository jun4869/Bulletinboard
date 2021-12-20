class MessageController < ApplicationController
  def index
    @messages = Message.order('created_at desc').last(10)
  end
end
