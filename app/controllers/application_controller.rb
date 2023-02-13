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
end
