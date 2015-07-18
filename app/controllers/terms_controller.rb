class TermsController < ApplicationController
	def index
		@terms = Term.all
	end
			
	def show
		@term = Term.find(params[:id])
	end
	
	def new
		@term = Term.new
	end
	
	def edit
		@term = Term.find(params[:id])
	end

	def create
		@term = Term.new(term_params) 
		@term.save
		redirect_to @term
	end
	
	def update
		@term = Term.find(params[:id])
 
		if @term.update(term_params)
			redirect_to @term
		else
			render 'edit'
		end
	end
	
	def destroy
		@term = Term.find(params[:id])
		@term.destroy
 
		redirect_to term_path
	end
	
private
	def term_params
		params.require(:term).permit(:name, :description)
	end
end
