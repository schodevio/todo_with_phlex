module Welcome
  class IndexView < ApplicationView
    def template
      h1 { 'Hello Phlex!' }
    end
  end
end
