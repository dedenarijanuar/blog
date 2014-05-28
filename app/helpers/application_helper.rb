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
   if user_signed_in?
     link_to "Logout", destroy_user_session_path, method: :delete 
   else
     link_to 'Login', new_user_session_path
   end
 end

end
