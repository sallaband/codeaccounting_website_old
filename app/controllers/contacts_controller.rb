class ContactsController < ApplicationController
    def new
      @contact = Contact.new
    end

  def create
    @contact = Contact.new(user_params)
      if @contact.save
        ContactMailer.thanks_email(@contact).deliver!
        render "thanks"
      else
        flash.now[:errors] = @contact.errors.full_messages
        render "new"
      end
  end

    def show
        render "/contacts/thanks.html.erb"
    end


    private
    def user_params
      params.require(:contact).permit(:full_name, :phone, :email)
    end
end
