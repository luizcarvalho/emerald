class FlowMap

  include Stealth::Flow

	flow :informations do
		state :ask_example
		state :get_example
		state :say_yes_example
		state :say_no_example
	end


  flow :hello do
    state :say_hello
    state :say_default_answer
    state :main_menu
  end

  flow :goodbye do
    state :say_goodbye
  end

  flow :catch_all do
    state :level1
  end

end
