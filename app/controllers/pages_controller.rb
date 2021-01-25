require 'prime'

class PagesController < ApplicationController
  def calc
    if params[:input].present?
      @answer = circular_primes(params[:input])
    else
      @answer = false
    end
  end


  private


  #function created to rotate the numbers (permutation)
  def rotations(input)
    #turns input variable into a string, then adds every element of that string into a new array
    digits = input.to_s.chars
    #goes through every element of that array and rotates them (necessary for permutation, then converts that array back into a string, then back to integers
    digits.map {digits.rotate!.join.to_i}
  end

  #function created to test if a number is prime and it's permutations are too (therefore Circular Primes)
  def circular_primes(input)
    #For every number in input and their permutations, test if they're Circular Primes
    circular_primes = Prime.each(input.to_i).select do |p|
      rotations(p).all?{|r| Prime.prime?(r) }
    end
  end
end
