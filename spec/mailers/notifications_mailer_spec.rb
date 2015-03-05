require "rails_helper"

RSpec.describe NotificationsMailer, type: :mailer do
  describe "Welcome Email" do
    before do
      Struct.new("Person", :name, :email)
      # user = Struct.new("Person", :name, :email)
      user = Struct::Person.new
      user.name = 'Glykeria'
      user.email = 'glykeriapeppa@gmail.com'
      @email = NotificationsMailer.welcome(user).deliver_now
    end

    it "should set the correct headers" do
      @email.to.should eq(['glykeriapeppa@gmail.com'])#Old RSpec
      # expect(@email.to).to_be ['glykeriapeppa@gmail.com'] #New RSpec
      expect(@email.from).to eq(['admin@wegotcoders.com'])
      expect(@email.cc).to eq(['audit@wegotcoders.com'])
      @email.subject.should eq('Welcome to the Recipe App')

      expect(@email.body.to_s).to match(/Welcome/)
    end
  end
end
