require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

get("/square/new") do
  erb(:square_new)
end

get("/square/results") do
  @num_square_input = params.fetch("number")
  @num_square_result = @num_square_input.to_f ** 2
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @num_square_root_input = params.fetch("user_number")
  @num_square_root_result = @num_square_root_input.to_f ** 0.5
  erb(:square_root_results)
end

get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  @num_user_min_input = params.fetch("user_min")
  @num_user_max_input = params.fetch("user_max")
  @num_random_result = rand(@num_user_min_input.to_f..@num_user_max_input.to_f)
  erb(:random_results)
end

get("/payment/new") do
  erb(:payment_new)
end

get("/payment/results") do
  @user_apr_input = params.fetch("user_apr").to_f
  @monthly_apr = @user_apr_input / 100 / 12
  @user_years_input = params.fetch("user_years").to_i
  @months = @user_years_input * 12
  @user_pv_input = params.fetch("user_pv").to_f
  @numerator = @monthly_apr * @user_pv_input
  @denominator = 1 - (1 + @monthly_apr) ** (@months * (-1))
  @payment_result = @numerator / @denominator
  erb(:payment_results)
end
