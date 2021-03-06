# frozen_string_literal: true

module TaskManager
  # this module is assigning users to the task
  class UserAssigner
    include Callable
    
    def initialize(assigned_param)
      @assigned_param = assigned_param
    end

    def call
      assigned_users = []
      if @assigned_param.present?
        @assigned_param.each do |item|
          item.each do |e|
            assigned_users << e['value'] if e['value'].present?
          end
        end
      else
        assigned_users = []
      end
      assigned_users
    end
  end
end
