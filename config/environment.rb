# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Rideon::Application.initialize!

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance_tag|
  "<span class='field_error'>#{html_tag}</span>".html_safe
end