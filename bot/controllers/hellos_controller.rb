class HellosController < BotController

  def say_hello
    send_replies
  end

  def main_menu
    send_replies
  end

  def say_default_answer
    send_replies
  end

end
