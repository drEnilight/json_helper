# frozen_string_literal: true

require 'json'

require_relative 'json_helper/search'
require_relative 'json_helper/methodologies/mixed_search'
require_relative 'json_helper/methodologies/multiple_fields_search'
require_relative 'json_helper/methodologies/strict_search'
require_relative 'json_helper/methodologies/tags_search'

module JsonHelper
  def self.search(phrase)
    JsonHelper::Search.call(phrase)
  end
end
