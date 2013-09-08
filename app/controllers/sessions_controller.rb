# -*- coding: utf-8 -*-
class SessionsController < ApplicationController
  skip_filter :signin_required
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])

    User.create_with_omniauth(auth) unless user

    session[:user_id] = user.id
    session[:twitter_id] = user.uid
#    session[:oauth_token] = auth["credentials"]["token"]
#    session[:oauth_secret] = auth["credentials"]["secret"]

    redirect_to '/contents/index', :notice => "認証しました!!"
  end

  def destroy
    session[:user_id] = nil;
    redirect_to '/', :notice => "認証を外しました"
  end
end
