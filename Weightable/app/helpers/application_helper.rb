module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def deny_access
    redirect_to new_user_session_path, :notice => 'Please sign in to access this page.'
  end

end
