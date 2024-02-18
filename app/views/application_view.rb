# frozen_string_literal: true

class ApplicationView < ApplicationComponent
	extend Phlex::Rails::HelperMacros

	# The ApplicationView is an abstract class for all your views.

	# By default, it inherits from `ApplicationComponent`, but you
	# can change that to `Phlex::HTML` if you want to keep views and
	# components independent.

	define_output_helper :vite_client_tag
	define_output_helper :vite_stylesheet_tag
	define_output_helper :vite_javascript_tag
	define_output_helper :vite_typescript_tag
end
