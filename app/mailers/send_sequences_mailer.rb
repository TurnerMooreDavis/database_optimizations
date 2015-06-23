class SendSequencesMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.send_sequences_mailer.data.subject
  #
  def data(name, email)
    @greeting = "Hi"
    @assembly = Assembly.find_by_name(name)
    @hits = Hit.where(subject_id: Gene.where(sequence_id: Sequence.where(assembly_id: @assembly.id))).order("percent_similarity")
    mail to: email
  end
end
