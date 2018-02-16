module ApplicationHelper
  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def nav_link(link_text, link_path)
    current_class = current_page?(link_path) || controller?(link_path.split('/').second) ? 'active' : ''
    link_to link_text, link_path, class: "nav-item nav-link #{current_class} #{controller_name}"
  end
end
