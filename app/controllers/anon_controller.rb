class AnonController < ApplicationController
  skip_before_action :ensure_signed_in

  def home
  end
end
