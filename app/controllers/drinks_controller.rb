class DrinksController < ApplicationController
def create
	@drink = Drink.new(drinks_params)
	@drink.save
	if @drink.save
		redirect_to root_path
	else
		render :new
	end

end

def new
	@drink = Drink.new
end

def index
	@drinks = Drink.all
end

def show
end

def edit
	@drink= Drink.find(params[:id])
end

def update
	@drink= Drink.find(params[:id])
	if @drink.update_attributes(drinks_params)
		flash[ :notice] = "Drink Updated"
		redirect_to root_path
	else
		flash[ :error] = "There was an error"
		rendor :edit
	end
end


def destroy
end

private 

def drinks_params
	params.require(:drink).permit(:description, :price)
end

end
