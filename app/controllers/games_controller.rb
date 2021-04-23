class GamesController < ApplicationController
    def index
        if params[:user_id]
            @user = User.find(params[:user_id])
            @games = @user.games
        else
            @games = Game.all
        end
    end

    def new
    # Admin-only action
        @user = User.find(session[:user_id])
        @game = Game.new
    end
    
    def create
    # Admin-only action
        if Game.where(name: params[:game][:name]).exists?
            flash[:notice] = "Game Already Exists"
        else
            @game = Game.create(game_params)
            flash[:notice] = "Game Successfully Created"
        end

        redirect_to games_path
    end

    def show
        @game = Game.find(params[:id])
    end

    def edit
        @game = Game.find(params[:id])
    end

    def update
        @game = Game.find(params[:id])
        if @game.update(game_params)
            flash[:notice] = "Game Details Edited Successfully"
        else
            flash[:notice] = "Oops! Something went wrong. Try again."
        end
        redirect_to game_path(@game)
    end

    def destroy
        Game.find(params[:id]).destroy
        flash[:notice] = "Game Deleted From Library"
        redirect_to games_path
    end

    def most_popular
        @pop_game = Game.most_popular
    end

    def game_params
        params.require(:game).permit(:name, :developer, :hours_played)
    end
end
 