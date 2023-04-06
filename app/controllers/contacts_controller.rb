class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Message envoyé!'
    else
      flash.now[:error] = "Une erreur s'est produite, votre message n'a pas été envoyé"
      render :new
    end
  end

  private

  def params_contacts
    params.requite(:contacts).permit(:name, :email, :message, :nickname)
  end
end
