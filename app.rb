require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/square/new") do
  @num_dice = params.fetch("dice").to_i

  @num_sides = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    @rolls.push(rand(1..@num_sides))
  end
  
  erb(:results)
end
