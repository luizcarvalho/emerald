class BotController < Stealth::Controller
  helper :all

  def route
    if current_message.payload.present?
      handle_payloads
    else
      handle_messages
    end
  end

  def handle_payloads
    case current_message.payload
    when 'MAIN_MENU'
      step_to flow: 'hello', state: 'main_menu'
    else
      step_to flow: 'hello', state: 'say_hello'
    end

    current_message.payload = nil
  end

  def handle_messages
    if current_session.present?
      step_to session: current_session
    else
      step_to flow: 'hello', state: 'say_hello'
    end
  end
end
