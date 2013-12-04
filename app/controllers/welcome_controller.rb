class WelcomeController < ApplicationController

  skip_before_filter :verify_authenticity_token, only: :auth_callback

  def index
    @player_summary = []
    if session.key? :current_user
      url = URI.parse("http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=#{ENV['STEAM_WEB_API_KEY']}&steamids=#{session[:current_user][:uid]}")
      res = Net::HTTP::get(url)
      
    end
    @player_summary = JSON.parse(res)
  end


  def auth_callback
    auth = request.env['omniauth.auth']
    session[:current_user] = { :nickname => auth.info['nickname'], :image => auth.info['image'], :uid => auth.uid }
    redirect_to root_url
  end
end
