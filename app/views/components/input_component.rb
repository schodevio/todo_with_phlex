class InputComponent < ApplicationComponent
  def initialize(model, name:, **options)
    @model = model

    @name = name
    @options = options
  end

  def template
    label(for: field_id) { @name.titleize }

    input(
      id: field_id,
      name: field_name,
      value: @model[@name],
      **@options
    )

    div(class: 'invalid-feedback') { errors.first } if errors.any?
  end

  private

  def field_id
    return @name if @model.blank?

    "#{@model.model_name.param_key}_#{@name}"
  end

  def field_name
    return @name if @model.blank?

    "#{@model.model_name.param_key}[#{@name}]"
  end

  def errors
    @errors ||= @model.errors[@name]
  end
end
