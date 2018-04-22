class TermsController < ApplicationController
  include HTTParty

  def create
    @term = current_user.terms.build(term_params)
    if @term.save!
      HTTParty.options(http_proxyaddr="http://172.16.2.30:8080")
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
