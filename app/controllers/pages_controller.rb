class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @saunas = Sauna.all
  end
end
