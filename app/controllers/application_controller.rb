class ApplicationController < ActionController::Base
  def add
    render({ template: "calculation_templates/add_form" })
  end

  def add_wizard
    @first = params.fetch("first-input").to_f
    @second = params.fetch("second-input").to_f
    @result = @first + @second

    render({ template: "calculation_templates/add_results" })
  end

  def subtract
    render({ template: "calculation_templates/subtract_form" })
  end

  def subtract_wizard
    @first = params.fetch("first-input").to_f
    @second = params.fetch("second-input").to_f
    @result = @second - @first

    render({ template: "calculation_templates/subtract_results" })
  end

  def multiply
    render({ template: "calculation_templates/multiply_form" })
  end

  def multiplication_wizard
    @first_operand = params.fetch("first-operand").to_f
    @second_operand = params.fetch("second-operand").to_f

    @result = @first_operand * @second_operand

    render({ template: "calculation_templates/multiply_results" })
  end

  def divide
    render({ template: "calculation_templates/division_form" })
  end

  def division_wizard
    @first = params.fetch("first-input").to_f
    @second = params.fetch("second-input").to_f

    @result = @first / @second

    render({ template: "calculation_templates/division_results" })
  end
end
