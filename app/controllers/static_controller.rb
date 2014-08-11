class StaticController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def palindrome?(string)
    string == string.reverse
  end

end
