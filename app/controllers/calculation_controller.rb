class CalculationController < ApplicationController
  def square
    render({ :template => "my_templates/square"}) 
  end

  def square_results
    @the_num = params.fetch("users_num").to_f
    @the_result = params.fetch("users_num").to_f ** 2
  
    render({ :template => "my_templates/square_results"}) 
  end

  def square_root
    render({ :template => "my_templates/square_root"})
  end

  def square_root_results
    @the_num = params.fetch("users_num").to_f
    @the_result = params.fetch("users_num").to_f ** 0.5
    
    render({ :template => "my_templates/square_root_results"})
  end

  def payment
    render({ :template => "my_templates/payment"})
  end

  def payment_results
    @the_apr = params.fetch("users_apr").to_f.to_fs(:percentage, { :precision => 4 })
    @the_years = params.fetch("users_years").to_i
    @the_principal = params.fetch("users_principal").to_f.to_fs(:currency)

    rate_per_period = (params.fetch("users_apr").to_f / 100) / 12
    numerator = rate_per_period * params.fetch("users_principal").to_f
    num_periods = @the_years * 12
    parenthesis = 1 + rate_per_period
    power = (parenthesis) ** -num_periods
    denominator = 1 - power
    @monthly_payment = (numerator / denominator).to_fs(:currency)
    
    render({ :template => "my_templates/payment_results"})
  end

  def random
    render({ :template => "my_templates/random"})
  end

  def random_results
    @the_min = params.fetch("users_min").to_f
    @the_max = params.fetch("users_max").to_f

    @the_random_num = rand(@the_min..@the_max)
    
    render({ :template => "my_templates/random_results"})
  end
end
