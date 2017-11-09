class HomeController < ApplicationController
  def index
  end

  def send_tweet
    SendTweet.new.perform
    render 'index'
  end

  private

  def params_tweet
    params.require(:params_tweet).permit(:content)
  end
end
