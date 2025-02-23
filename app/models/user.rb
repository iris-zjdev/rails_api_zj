require "httparty"

class User < ApplicationRecord
  include HTTParty
  base_uri "https://jsonplaceholder.typicode.com"

  def self.all
    get("/users")
  end

  def self.find(id)
    get("/users/#{id}")
  end

  def self.avatar_url(user)
    "https://robohash.org/#{user['id']}?size=50x50"
  end

  def self.large_avatar_url(user)
    "https://robohash.org/#{user['id']}?size=100x100"
  end
end
