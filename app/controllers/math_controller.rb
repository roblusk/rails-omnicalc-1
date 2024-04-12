class MathController < ApplicationController
  def home
    render({:template => "math/home"})
  end
  def square_form
    render({:template => "math/square_form"})
  end
  def square_results
    @number = params.fetch("number").to_f
    @square = @number ** 2
    render({:template => "math/square_results"})
  end

  def square_root_form
    render({:template => "math/square_root_form"})
  end
  def square_root_results
    @number = params.fetch("number").to_f
    @square_root = @number ** 0.5
    render({:template => "math/square_root_results"})
  end

  def payment_form
    render({:template => "math/payment_form"})
  end
  def payment_results
    @user_apr = params.fetch("user_apr").to_f
    @user_years = params.fetch("user_years").to_i
    @user_pv = params.fetch("user_pv").to_f
    @payment = (@user_pv * (@user_apr / 1200)) / (1 - (1 + @user_apr / 1200) ** (-@user_years * 12))
    render({:template => "math/payment_results"})
  end
  def random_form
    render({:template => "math/random_form"})
  end
  def random_results
    @user_min = params.fetch("user_min").to_f
    @user_max = params.fetch("user_max").to_f
    @random_number = rand(@user_min..@user_max)
    render({:template => "math/random_results"})
  end
end
