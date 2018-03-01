module ApplicationHelper
  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def nav_link(link_text, link_path)
    current_class = current_page?(link_path) || controller?(link_path.split('/').second) ? 'active' : ''
    link_to link_text, link_path, class: "nav-item nav-link #{current_class} #{controller_name}"
  end

  def flash_class(level)
    case level
    when 'notice' then 'alert alert-info'
    when 'success' then 'alert alert-success'
    when 'error' then 'alert alert-danger'
    when 'alert' then 'alert alert-danger'
    end
  end
end
