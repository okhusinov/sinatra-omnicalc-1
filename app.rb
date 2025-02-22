require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

get("/square/new") do
  erb(:square_new)
end

get("/square/results") do
  @num_square_input = params.fetch("number").to_f
  @num_square_result = @num_square_input ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @num_square_root_input = params.fetch("user_number").to_f
  @num_square_root_result = @num_square_root_input ** 0.5
  erb(:square_root_results)
end

get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  @num_user_min_input = params.fetch("user_min").to_f
  @num_user_max_input = params.fetch("user_max").to_f
  @num_random_result = rand(@num_user_min_input..@num_user_max_input)
  erb(:random_results)
end
