class EstimationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.estimation_mailer.hello.subject
  #
  def hello
    @estimation = Estimation.last

    mail(to: ENV['GMAIL_ADDRESS_RECIPIENT'], subject: "Nouvelle demande d'estimation de evaluationsansfrais.ca")
  end
end
