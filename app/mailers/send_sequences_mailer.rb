class SendSequencesMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_sequences_mailer.data.subject
  #
  def data
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
