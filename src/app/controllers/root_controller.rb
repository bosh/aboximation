class RootController < ApplicationController
  def index
    render stats: 200, json: {message: "You're home"}
  end
end
