# frozen_string_literal: true

require "rails"
require "decidim/core"

module Decidim
  module SurveyMultipleAnswers
    # This is the engine that runs on the public interface of survey_multiple_answers.
    class Engine < ::Rails::Engine
      isolate_namespace Decidim::SurveyMultipleAnswers

      routes do
        # Add engine routes here
        # resources :survey_multiple_answers
        # root to: "survey_multiple_answers#index"
      end

      initializer "SurveyMultipleAnswers.webpacker.assets_path" do
        Decidim.register_assets_path File.expand_path("app/packs", root)
      end
    end
  end
end
