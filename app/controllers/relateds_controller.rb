class RelatedsController < ApplicationController
def create
    @term = Term.find(params[:term_id])
    @related = @term.relateds.create(related_params)
    redirect_to term_path(@term)
  end
 
  private
    def related_params
      params.require(:related).permit(:term_id, :related_id)
    end
end
