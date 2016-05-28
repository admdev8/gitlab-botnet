require 'telegram/bot'

class TelegramBot
  def initialize
    @token = 'Your bot token'
    @chat_id = '@your_chat'
  end

  def inform(message)
    Telegram::Bot::Client.run(@token) do |bot|
      bot.api.send_message(
        chat_id: @chat_id,
        text: "Hello, roman. #{message} is here"
      )
    end
  end
end