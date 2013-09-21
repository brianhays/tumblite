class HeartsController < ApplicationController
	def create
		@heart = Heart.new(heart_params)

      if @heart.save
        redirect_to @heart.post, notice: 'Thanks! <3'
      else
        redirect_to root_path, notice: 'Yikes, something went wrong!'
      end
	end

	private

	def heart_params
		params.require(:heart).permit(:post_id)
	end

end