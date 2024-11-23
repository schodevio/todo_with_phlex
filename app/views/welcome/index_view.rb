module Welcome
  class IndexView < ApplicationView
    def template
      h1 { 'Hello Phlex!' }

      ul do
        li do
          a(href: root_path) { 'Home' }
        end

        li do
          a(href: events_path) { 'All Events' }
        end

        li do
          a(href: new_event_path) { 'New Event' }
        end
      end
    end
  end
end
