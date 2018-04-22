class TermsController < ApplicationController
  include HTTParty

  def create
    if current_user.nil?
      redirect_to login_path and return
    end
    @term = current_user.terms.build(term_params)
    if @term.save
      @res = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{@term.text}&api_key=1ca2cf614eeaa185c2b61753b434b599&format=json")
      render 'show'
    else
      redirect_to root_path
    end
  end
  
  private
    def term_params
      params.require(:term).permit(:text)
    end
end
