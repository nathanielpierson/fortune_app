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
    def bottles
    bottles = []
    x = 99
    while x > 0
      bottles.push("#{x} bottles of beer on the wall, #{x} bottles of beer, take one down pass it around, #{x-1} bottles of beer on the wall")
    x -= 1
    end
    render json: bottles
  end
end
