class ContactMailer < ActionMailer::Base
  # ContactMailer.delivery_method = :test
  # ContactMailer.delivery_method = :file
  # ContactMailer.file_settings = { :location => Rails.root.join('tmp/mail') }

  default from: 'seanthefinanceguy@gmail.com'

  def thanks_email(contact)
      @contact = contact
      @url  = 'http://www.codeaccounting.com'
      mail(
        to: 'seanthefinanceguy@gmail.com',
        subject: 'CodeAccounting Contact Request',
        content_type: "text/html"
      )
  end
end
