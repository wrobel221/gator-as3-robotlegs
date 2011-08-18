module Gator
  module AS3
    module RobotLegs

      class CommandGenerator < Gator::AS3::KlassGenerator
        include Gator::Project
        include WithRobotLegsTemplates
        include ActAsRobotLegsKlassGenerator

        define :command => "command",
               :usage => "generate as3 rl command CLASS_NAME", :description => "Creates RobotLegs Command class."

        def template_file
         "as3/robotlegs/command.as.tt"
        end

        def generate
         @package_name += ".components" unless @package_name == ""
         @class_name += "Command"
         super
        end

      end

    end
  end
end