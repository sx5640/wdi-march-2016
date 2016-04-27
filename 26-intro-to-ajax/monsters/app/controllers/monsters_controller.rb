class MonstersController < ApplicationController
  def index
    if params[:search]
      @monsters = Monster.where('name LIKE ?', "%#{params[:search]}%")
    else
      @monsters = Monster.all
    end

    respond_to do |format|
      format.html do
        if request.xhr?
          render @monsters
        end
      end
      format.js
      format.json
    end

  end
end
