module ArticlesHelper
  def navbar_link_to(*p)
    "<li class='#{'active' if current_page? p[1]}'>#{link_to *p}</li>".html_safe
  end
end
