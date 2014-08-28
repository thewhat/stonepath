# A Task in this framework is simply a relation between a workitem and a workbench.  It has
# some default workflow, and should be extended with whatever attributes make sense for the
# business domain you are modeling.

require 'aasm'
require 'stonepath/event_logging'
require 'stonepath/dot'


module StonePath
  module SPTask
    def self.included(base)
      base.instance_eval do
        include AASM
        extend StonePath::EventLogging
        extend StonePath::Dot

        # Tasks are now completely polymorphic between workbenches.
        # as long as an activerecord model declares itself as a workbench and declares itself
        # a workbench for the specific kind of task, everything just works.
        belongs_to :workbench, :polymorphic => true

        # Tasks are now completely polymorphic between workitems.
        # as long as an activerecord model declares itself as a workitem and declares itself
        # a workitem for the specific kind of task, everything just works.
        belongs_to :workitem, :polymorphic => true

        def state_machine(options={}, &block)
          aasm_options = {:whiny_transitions => false}
          aasm_options.update(options)
          aasm(aasm_options, &block)
        end
      end
    end
    
    private
    
    def notify_created
      if workitem.respond_to?(:task_created)
        workitem.task_created(self)
      end
    end
    
    def notify_closed
      if workitem.respond_to?(:task_closed)
        workitem.task_closed(self)
      end
    end

  end
end
