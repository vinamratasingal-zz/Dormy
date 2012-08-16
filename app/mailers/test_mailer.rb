class TestMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def test
    mail(:to => "ryan@ryanjm.com", :subject => "Hello world", :from => "ryanjm@gmail.com")
  end
end
