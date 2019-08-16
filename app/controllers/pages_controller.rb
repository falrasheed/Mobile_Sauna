class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if params[:query].present?
      sql_query = " \
        saunas.title @@ :query \
        OR saunas.description @@ :query \
        OR saunas.address @@ :query \
      "
      # if there is a query, filter all th saunas with a location based on the query
      @saunas = Sauna.where(sql_query, query: "%#{params[:query]}%")
    else
      @saunas = Sauna.all
    end

  end
end
