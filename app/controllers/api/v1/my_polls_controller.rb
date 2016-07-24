class Api::V1::MyPollsController < ApplicationController
	def index
		@polls = MyPoll.all
	end

	def show
		@poll = MyPoll.find(params[:id])
	end

	def update
	end

	def create
	end

	def destroy
	end

end