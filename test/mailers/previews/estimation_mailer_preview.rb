# Preview all emails at http://localhost:3000/rails/mailers/estimation_mailer
class EstimationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/estimation_mailer/hello
  def hello
    estimation = Estimation.first
    EstimationMailer.with(estimation: estimation).hello.deliver_now
  end

end
