class FlowMap

  include Stealth::Flow

	flow :informations do
		state :directions
		state :general
		state :menu
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
