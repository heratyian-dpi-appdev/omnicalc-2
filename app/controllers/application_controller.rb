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
end
