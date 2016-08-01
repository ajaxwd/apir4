class Api::V1::QuestionsController < ApplicationController
	before_action :authenticate, except: [:index,:show]
	before_action :set_question, only: [:show,:update,:delete]

	def index
		@poll = MyPoll.find(params[:poll_id])
		@questions = @poll.questions
	end

	def show
	end

	def update
	end

	def delete
	end

	private

	def question_params
	end

	def set_question
		@question = Question.find(params[:id])
	end

end