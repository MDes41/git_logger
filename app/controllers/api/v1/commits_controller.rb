class Api::V1::CommitsController < ApplicationController
	def index
		render json: Commits.all, status: 200
	end


	def create
		params = JSON.parse(params)
		render Commits.all, status: 200
	end
end