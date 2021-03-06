class Api::V1::QuestionsController < ApplicationController
	before_action :authenticate, except: [:index,:show]
	before_action :set_question, only: [:show,:update,:delete]
	before_action :set_poll

	def index
		@questions = @poll.questions
	end

	def show
	end

	def create
		@question = @poll.questions.new(question_params)
		if @question.save
			render template: "api/v1/questions/show"
		else
			render json: { error: @question.errors }, status: :unprossesable_entity
		end
	end

	def update
	end

	def delete
	end

	private

	def question_params
		params.require(:question).permit(:description)
	end

	def set_poll
		@poll = MyPoll.find(params[:poll_id])
	end

	def set_question
		@question = Question.find(params[:id])
	end

end