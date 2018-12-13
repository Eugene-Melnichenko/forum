module ApplicationHelper

  def dashboard
    @dashboards = Dashboard.last
  end


  def dashboard_logotype
    @dashboards = Dashboard.last.logotype.upcase 
  end

  def dashboard_title
    @dashboards = Dashboard.last.title.upcase 
  end

  def dashboard_url_1
    @dashboards = Dashboard.last.url_1 
  end

  def dashboard_url_2
    @dashboards = Dashboard.last.url_2 
  end

  def dashboard_url_3
    @dashboards = Dashboard.last.url_3 
  end

  def dashboard_text_1
    @dashboards = Dashboard.last.text_1 
  end

  def dashboard_title_text_1
    @dashboards = Dashboard.last.title_text_1 
  end

  def dashboard_text_2
    @dashboards = Dashboard.last.text_2
  end

  def dashboard_title_text_2
    @dashboards = Dashboard.last.title_text_2
  end

  def dashboard_text_3
    @dashboards = Dashboard.last.text_3 
  end

  def dashboard_title_text_3
    @dashboards = Dashboard.last.title_text_3
  end

  def user_profile
    if current_user.first_name.blank? && current_user.last_name.blank?
      return 'User profile'
    else
      return "#{current_user.first_name} #{current_user.last_name}"
    end
  end

end
