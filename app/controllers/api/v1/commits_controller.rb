
class Api::V1::CommitsController < ApplicationController
	def index
		# render json: Commits.all, status: 200
		# params = JSON.parse(params)
		# render json: Commits.all, status: 200
	end


	def create
		payload = JSON.parse(params[:payload])
		author = payload[:head_commit][:author][:username]
		message = payload[:head_commit][:message]
		id = payload[:head_commit][:id]
		timestamp = payload[:head_commit][:timestamp]

	
		render json: "Hello World", status: 200
	end

	private
	def body_params
		params.permit(:id, :url, :name, :created_at)
	end
end