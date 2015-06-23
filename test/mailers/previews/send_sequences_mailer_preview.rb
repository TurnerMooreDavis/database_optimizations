# Preview all emails at http://localhost:3000/rails/mailers/send_sequences_mailer
class SendSequencesMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/send_sequences_mailer/data
  def data
    SendSequencesMailer.data
  end

end
