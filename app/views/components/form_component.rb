class FormComponent < ApplicationComponent
  attr_reader :model

  def initialize(url:, model: nil, method: 'GET', **options)
    @url = url
    @model = model

    @method = method
    @options = options
  end

  def template
    form(action: @url, method: @method, options: @options) do
      yield(self) if block_given?

      div(class: 'mt-3') do
        button(type: 'submit', class: 'btn') { submit_btn_text }
      end
    end
  end

  private

  def submit_btn_text
    action = @model.new_record? ? 'Create' : 'Update'

    "#{action} #{@model.model_name.name}"
  end
end
