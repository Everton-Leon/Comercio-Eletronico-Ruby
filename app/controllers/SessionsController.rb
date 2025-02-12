class SessionsController < ApplicationController
    def reset
      reset_session
      redirect_to root_path, notice: "Sessão apagada!"
    end
  end
  