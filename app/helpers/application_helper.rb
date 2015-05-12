module ApplicationHelper
  def setting_link(icon, setting)
    s = Setting.value(setting)
    link_to(fa_icon(icon), s, target: '_blank') if s
  end
end
