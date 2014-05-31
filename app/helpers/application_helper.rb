module ApplicationHelper
 def flash_message
    flash.inject('') do |message, element|
      message = message + (content_tag :div, :class => "message alert flash_#{element.first}" do
                              concat(content_tag(:div, element.last)) 
                              concat("<a class='close' data-dismiss='alert' href='#'>&times;</a>".html_safe)
        end) if (element.last.is_a?(String))
      message.html_safe
    end
  end

 def sign_in?
   content_tag :span, class: "auth_menu cf" do
     if user_signed_in?
       concat "Sign in as #{current_user.name || current_user.email}"
       concat link_to "Sign out", destroy_user_session_path, method: :delete, id: 'sign_out'
     else
       concat link_to 'Sign in', new_user_session_path
       concat link_to 'Sign in with facebook', 'auth/facebook', id: 'facebook_connect'
     end
   end
 end

end
