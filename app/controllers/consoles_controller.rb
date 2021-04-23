class ConsolesController < ApplicationController
    def index
        if params[:user_id]
            @user = User.find(params[:user_id])
            @consoles = @user.consoles
        else
            @consoles = Console.all
        end
    end

    def new
        @console = Console.new
    end

    def create
        if Console.where(name: params[:console][:name]).exists?
            flash[:notice] = "Console Already Exists"
        else
            @console = Console.create(console_params)
            flash[:notice] = "Console Successfully Created"
        end

        redirect_to consoles_path
    end

    def show
        @console = Console.find(params[:id])
    end

    def edit
        @console = Console.find(params[:id])
    end

    def update
        @console = Console.find(params[:id])
        if @console.update(console_params)
            flash[:notice] = "Console Details Edited Successfully"
        else
            flash[:notice] = "Oops! Something went wrong. Try again."
        end
        redirect_to console_path(@console)
    end

    def destroy
        Console.find(params[:id]).destroy
        flash[:notice] = "Console Deleted From Library"
        redirect_to consoles_path
    end

    def most_popular
        @pop_console = Console.most_popular
    end
    
    def console_params
        params.require(:console).permit(:name, :manufacturer)
    end
end
