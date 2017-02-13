
class Api::V1::CommitsController < ApplicationController
	def index
		# render json: Commits.all, status: 200
		# params = JSON.parse(params)
		# render json: Commits.all, status: 200
	end


	def create
		puts 'HHHLHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH' + body_params
		render json: "Hello World", status: 200
	end

	private
	def body_params
		params.permit(:id, :url, :name, :created_at)
	end
end