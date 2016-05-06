class NewsletterMailer < ApplicationMailer
  include Roadie::Rails::Mailer

  def newsletter newsletter
    @newsletter = newsletter
    roadie_mail
  end
end
