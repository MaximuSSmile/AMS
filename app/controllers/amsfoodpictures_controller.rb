class AmsfoodpicturesController < ApplicationController
	before_action :find_amsfoodpicture, only: [ :show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]


	def index
		@amsfoodpicture = Amsfoodpicture.all.order("created_at DESC")
	end

	def show
		
	end

	def new
		@amsfoodpicture = current_user.amsfoodpictures.build
	end

	def create
		@amsfoodpicture = current_user.amsfoodpictures.build(amsfoodpicture_params)

		if @amsfoodpicture.save
			redirect_to @amsfoodpicture, notice: "wish was succesfully updated!"
		else
			render 'new'
		end
	end

	def edit
		
	end

	def update
		if @amsfoodpicture.update(amsfoodpicture_params)
			redirect_to @amsfoodpicture
		else
			render "edit"
		end
	end

	def destroy
		@amsfoodpicture.destroy
		redirect_to @amsfoodpicture
	end

	private

	def amsfoodpicture_params
		params.require(:amsfoodpicture).permit(:titlerus, :descriptionrus, :imagefoodpicture )
	end

	def find_amsfoodpicture
		@amsfoodpicture = Amsfoodpicture.find(params[:id])
	end
end
