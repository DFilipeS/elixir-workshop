defmodule FeupWorkshopWeb.UserView do
  use FeupWorkshopWeb, :view

  def get_gravatar_url(input) do
    image = Base.encode64(Gravatex.main(input))
    "data:image/png;base64, #{image}" 
  end
end
