class MyExamplesController < ApplicationController
  def fortune
    array = [ "you will learn how to code", "you will not learn how to code", "you will sort of learn to code I guess" ]
    numb = rand(0...3)
    render json: array[numb]
  end
  def lotto
    x = 0
    numb = 0
    numbray = []
    while x < 6
      numb = (rand 0...60)
      numbray.push(numb)
      x += 1
    end
    render json: numbray
  end
end
