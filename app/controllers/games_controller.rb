class GamesController < ApplicationController
  def new
    @letters = ("a".."z").to_a.sample(8).join(" ")
  end

  def score
    @input = params[:name]
    @letters = params[:letters]
    @check = if words_included?(@input, @letters)
      "win"
    else
      "lose"
    end
  end

   def words_included?(word, grid)
    word.split("").each do |c|
      unless grid.include? c
        return false
      end
    end

  end
end


  #   @letters = generate_grid(15).join
  #   #(0...10).map { o[rand(o.length)] }.join
  # end

  # def score
  #   input = params[:name]
  #   letters = params[:letters]
  # end


  # private

  # def generate_grid(grid_size)
  #   o = Array.new(grid_size) {  ('A'..'Z').to_a[rand(26)]}
  # end

  # def translator(word)
  #   response = open("https://wagon-dictionary.herokuapp.com/#{word}")
  #   json = JSON.parse(response.read)
  # end

  # def included?(guess, letters)
  #   guess.split("").all? {|letter| letters.include? letter}
  # end

  # def score_and_messenges(name, translation, letters)
  #   if included?(name.upcase, letters)
  #     if translation
  #       "ok"
  #       # score = compute_score(name)
  #       # [score, "well done"]
  #     else
  #       [0, "not a englisch word"]
  #     end
  #   else
  #     [0, "not in the grid"]
  #   end
  # end

  # def compute_score(name, time_taken)
  #   (time_taken > 60.0) ? 0 : name.size * (1.0 - time_taken / 60.0)

  # end



