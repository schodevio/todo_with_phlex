# frozen_string_literal: true

class ApplicationLayout < ApplicationView
	include Phlex::Rails::Layout

	def template(&block)
		doctype

		html do
			head do
				title { 'TodoWithPhlex' }
				meta name: 'viewport', content: "width=device-width,initial-scale=1"

				csp_meta_tag
				csrf_meta_tags

				helpers.vite_client_tag
				helpers.vite_stylesheet_tag 'application.scss'
				helpers.vite_javascript_tag 'application.js'
			end

			body do
				main(&block)
			end
		end
	end
end
