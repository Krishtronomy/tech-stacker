module ApplicationHelper
  module ApplicationHelper
    def select_alert_subclass(input)
      case input
      when 'notice'
        'success'
      when 'alert'
        'warning'
      when 'error'
        'danger'
      else
        'info'
      end
    end
  end
end
