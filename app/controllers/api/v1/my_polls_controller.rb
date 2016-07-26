class Api::V1::MyPollsController < ApplicationController
	before_action :suthenticate, only: [:create,:update,:destroy]
	before_action :set_poll, only: [:show,:update]
	def index
		
	end

	def show
		@poll = MyPoll.find(params[:id])
	end

	def update
	end

	def create
		@poll = @current_user.my_polls.new(my_polls_params)
		if @poll.save
			render template: "api/v1/my_polls/show"
		else
			render json: { errors: @poll.errors.full_messages }, status: :unprocessable_entity
		end
	end

	def destroy
	end

	private

	def set_poll
		@polls = MyPoll.all
	end

	def my_polls_params
		params.require(:poll).permit(:title,:description,:expires_at)
	end

end