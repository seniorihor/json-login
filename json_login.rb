# -*- coding: utf-8 -*-

require 'sinatra'
require 'json'

def login(login, password)
  login == 'qwerty' && password == '123'
end

post '/login' do
  {auth: login(params[:login], params[:pass])}.to_json
end
