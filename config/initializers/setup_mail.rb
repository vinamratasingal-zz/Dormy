ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "gmail.com",  
  :user_name            => 'ryanjm@gmail.com',
  :password             => '**',
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}