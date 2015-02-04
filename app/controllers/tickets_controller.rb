class TicketsController < ApplicationController
	def show

	end

	def create

	    @card = Card.find(params[:card_id])

		@ticket = @card.tickets.create(comment_params)

	  	if @ticket.save
			flash[:notice] = "Successfully saved"
		else
			flash[:alert] = @ticket.errors.full_messages	
		end
		redirect_to card_path(@card)
	end


	 # DELETE /Cards/1
  # DELETE /Cards/1.json
  	def destroy
    	@card = Card.find(params[:card_id])

		@ticket = @card.tickets.find(params[:id])

	    @ticket.destroy
	    
		redirect_to card_path(@card)
  	end


	private
		def comment_params
			params.require(:ticket).permit(:concept, :amount, :comment, :entsal)			
	end
end
