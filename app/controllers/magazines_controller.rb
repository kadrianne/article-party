class MagazinesController < ApplicationController

    def index
        magazines = Magazine.all
        render json: magazines, include: :articles
    end

end
