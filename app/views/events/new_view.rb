module Events
  class NewView < ApplicationView
    attr_reader :event

    def initialize(event)
      @event = event
    end

    def template
      h1 { 'Hello New Event!' }
      p { event.inspect }

      form(action: events_path, method: 'POST') do
        input(type: 'hidden', name: 'authenticity_token', value: helpers.form_authenticity_token)

        div(class: 'mb-3') do
          render InputComponent.new(event, name: 'name', type: 'text')
        end

        div(class: 'mb-3') do
          render InputComponent.new(event, name: 'slug', type: 'text')
        end

        div(class: 'mb-3') do
          render InputComponent.new(event, name: 'starts_at', type: 'date')
        end

        div(class: 'mb-3') do
          render InputComponent.new(event, name: 'ends_at', type: 'date')
        end

        div(class: 'mb-3') do
          button(type: 'submit') { 'Create Event' }
        end
      end
    end
  end
end
