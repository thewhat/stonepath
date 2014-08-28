class <%= class_name %> < ActiveRecord::Base
  include StonePath::WorkItem

  #owned_by :your_owning class

  #tasked_through :your_implementation_of_stonepath_task

  #log_events  # uncomment this if you generate the event log.

  # This is an example trivial workflow.  This is now yours to change as
  # you see fit.
  state_machine do
    state :pending, initial: true
    state :in_process
    state :completed

    event :activate do
      transitions from: :pending, to: :in_process
    end

    event :complete do
      transitions from: :in_process, to: :completed
    end

    event :reactivate do
      transitions from: :completed, to: :in_process
    end
  end

end
